const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const genexpr = fs.readFileSync(path.join(root, "hearth_core.genexpr"), "utf8");
const genParams = [
  ["input", 0],
  ["hearth", 0.35],
  ["body", 1.5],
  ["velvet", 0.28],
  ["bloom", 0.24],
  ["flux", 0.18],
  ["bias", 0.04],
  ["adapt", 0.62],
  ["detail", 0.58],
  ["dynamics", 0.42],
  ["recovery", 140],
  ["stereoProtect", 0.70],
  ["mix", 1],
  ["output", 0],
  ["quality", 1],
  ["autoTrim", 1],
  ["patina", 0],
];

const appversion = {
  major: 10,
  minor: 0,
  revision: 0,
  architecture: "x64",
  modernui: 1,
};

const gendsp = {
  patcher: {
    fileversion: 1,
    appversion,
    classnamespace: "dsp.gen",
    rect: [120, 120, 760, 560],
    gridonopen: 1,
    gridsize: [15, 15],
    boxes: [
      {
        box: {
          id: "gen-in-1",
          maxclass: "newobj",
          text: "in 1",
          numinlets: 0,
          numoutlets: 1,
          outlettype: ["signal"],
          patching_rect: [30, 42, 42, 22],
        },
      },
      {
        box: {
          id: "gen-in-2",
          maxclass: "newobj",
          text: "in 2",
          numinlets: 0,
          numoutlets: 1,
          outlettype: ["signal"],
          patching_rect: [30, 82, 42, 22],
        },
      },
      {
        box: {
          id: "codebox-hearth",
          maxclass: "codebox",
          numinlets: 19,
          numoutlets: 2,
          patching_rect: [100, 30, 560, 500],
          code: genexpr,
        },
      },
      {
        box: {
          id: "gen-out-1",
          maxclass: "newobj",
          text: "out 1",
          numinlets: 1,
          numoutlets: 0,
          patching_rect: [690, 42, 46, 22],
        },
      },
      {
        box: {
          id: "gen-out-2",
          maxclass: "newobj",
          text: "out 2",
          numinlets: 1,
          numoutlets: 0,
          patching_rect: [690, 82, 46, 22],
        },
      },
    ],
    lines: [
      { patchline: { source: ["gen-in-1", 0], destination: ["codebox-hearth", 0] } },
      { patchline: { source: ["gen-in-2", 0], destination: ["codebox-hearth", 1] } },
      { patchline: { source: ["codebox-hearth", 0], destination: ["gen-out-1", 0] } },
      { patchline: { source: ["codebox-hearth", 1], destination: ["gen-out-2", 0] } },
    ],
  },
};

genParams.forEach(([name, defaultValue], i) => {
  const col = i % 3;
  const row = Math.floor(i / 3);
  gendsp.patcher.boxes.push({
    box: {
      id: `gen-param-${name}`,
      maxclass: "newobj",
      text: `param ${name} ${defaultValue}`,
      numinlets: 0,
      numoutlets: 1,
      outlettype: [""],
      patching_rect: [30 + col * 170, 150 + row * 34, 145, 22],
    },
  });
  gendsp.patcher.lines.push({
    patchline: {
      source: [`gen-param-${name}`, 0],
      destination: ["codebox-hearth", i + 2],
    },
  });
});

fs.writeFileSync(path.join(root, "Hearth-Core.gendsp"), JSON.stringify(gendsp, null, 2));

let nextId = 1;
const boxes = [];
const lines = [];
const id = () => `obj-${nextId++}`;
const add = (box) => {
  boxes.push({ box });
  return box.id;
};
const connect = (source, outlet, dest, inlet) => {
  lines.push({ patchline: { source: [source, outlet], destination: [dest, inlet] } });
};
const uiOrder = [
  "input",
  "hearth",
  "body",
  "bias",
  "velvet",
  "detail",
  "dynamics",
  "recovery",
  "output",
  "bloom",
  "flux",
  "adapt",
  "stereoProtect",
  "mix",
  "quality",
  "autoTrim",
  "patina",
];
const palette = {
  bg: [0.075, 0.067, 0.058, 1],
  panel: [0.115, 0.103, 0.09, 1],
  text: [0.88, 0.82, 0.72, 1],
  muted: [0.61, 0.55, 0.47, 1],
  input: [0.56, 0.78, 0.96, 1],
  heat: [1.0, 0.64, 0.31, 1],
  body: [0.95, 0.76, 0.45, 1],
  bias: [1.0, 0.54, 0.69, 1],
  bloom: [1.0, 0.42, 0.54, 1],
  flux: [0.58, 0.52, 1.0, 1],
  patina: [0.70, 0.62, 0.48, 1],
  servo: [0.38, 0.86, 0.74, 1],
  tone: [0.73, 0.90, 0.62, 1],
  dynamics: [0.72, 0.61, 0.94, 1],
  output: [0.92, 0.88, 0.74, 1],
};
const withAlpha = (color, alpha) => [color[0], color[1], color[2], alpha];
const blend = (a, b, t) => [
  a[0] * (1 - t) + b[0] * t,
  a[1] * (1 - t) + b[1] * t,
  a[2] * (1 - t) + b[2] * t,
  a[3] * (1 - t) + b[3] * t,
];
const deviceInfo =
  "Hearth is a warmth-first adaptive saturation effect: input conditioning feeds shape controls, parallel Bloom and Flux lanes, a source-aware servo/tone stage, then final blend and level.";
const deviceWidth = 900;
const deviceHeight = 190;
const visibleXOffset = 12;
const uiRect = (rect) => [rect[0] + visibleXOffset, rect[1], rect[2], rect[3]];
const uiLabels = {
  input: "Input dB",
  hearth: "Hearth",
  body: "Body dB",
  bias: "Bias",
  velvet: "Velvet",
  detail: "Detail",
  dynamics: "Dyn",
  recovery: "Recovery",
  output: "Output dB",
  bloom: "Bloom",
  flux: "Flux",
  adapt: "Adapt",
  stereoProtect: "Stereo",
  mix: "Mix",
  quality: "Quality",
  autoTrim: "Auto",
  patina: "Patina",
};
const controlMeta = {
  input: {
    short: "In",
    kind: "dial",
    info: "Input trim before the saturation core. Use this to hit Hearth harder or back off hot material.",
    unitstyle: 4,
    color: palette.input,
  },
  hearth: {
    short: "Hearth",
    kind: "dial",
    info: "Main warmth and drive amount. Higher settings create denser saturation and stronger harmonic color.",
    color: palette.heat,
  },
  body: {
    short: "Body",
    kind: "dial",
    info: "Low-mid body emphasis before the nonlinear stage. Positive values add weight; negative values thin the drive path.",
    unitstyle: 4,
    color: palette.body,
  },
  bias: {
    short: "Bias",
    kind: "dial",
    info: "Asymmetry bias for the saturation curve. Use subtle amounts for richer even-harmonic color.",
    color: palette.bias,
  },
  velvet: {
    short: "Velvet",
    kind: "dial",
    info: "Softens upper harmonics after saturation. Higher values make the tone smoother and less edgy.",
    color: palette.tone,
  },
  detail: {
    short: "Detail",
    kind: "dial",
    info: "Restores a little presence after smoothing. Raise it when the result needs more articulation.",
    color: palette.tone,
  },
  dynamics: {
    short: "Dyn",
    kind: "dial",
    info: "Makes drive respond to level and envelope. Higher values push loud passages more dynamically.",
    color: palette.dynamics,
  },
  recovery: {
    short: "Recov",
    kind: "dial",
    info: "Envelope recovery time in milliseconds for adaptive drive and flux movement.",
    unitstyle: 2,
    color: palette.dynamics,
  },
  output: {
    short: "Out",
    kind: "dial",
    info: "Output trim after processing. Use this to level-match the processed signal.",
    unitstyle: 4,
    color: palette.output,
  },
  bloom: {
    short: "Bloom",
    kind: "dial",
    info: "Transient-local parallel density. Higher values make attacks feel fuller and more saturated.",
    color: palette.bloom,
  },
  flux: {
    short: "Flux",
    kind: "dial",
    info: "Adds a path-dependent flux lane for tape-like movement and memory in the saturation.",
    color: palette.flux,
  },
  adapt: {
    short: "Adapt",
    kind: "dial",
    info: "Adaptive protection amount. Higher values back off harshness when the source gets bright or rough.",
    color: palette.servo,
  },
  stereoProtect: {
    short: "Stereo",
    kind: "dial",
    info: "Keeps the side channel from overdriving relative to the center, preserving stereo stability.",
    color: palette.servo,
  },
  mix: {
    short: "Mix",
    kind: "dial",
    info: "Wet/dry blend between the input and Hearth's processed signal.",
    unitstyle: 5,
    color: palette.output,
  },
  quality: {
    short: "Qual",
    kind: "menu",
    info: "Anti-aliasing quality for the tube lane: Eco, Live, or High. Higher quality costs more CPU.",
    enum: ["Eco", "Live", "High"],
    color: palette.heat,
  },
  autoTrim: {
    short: "Auto",
    kind: "toggle",
    info: "Automatically compensates output level against the input envelope for easier level matching.",
    enum: ["Off", "On"],
    color: palette.output,
  },
  patina: {
    short: "Patina",
    kind: "dial",
    info: "Adds a very subtle deterministic low-level texture. Keep low for clean material.",
    color: palette.patina,
  },
};
const layout = {
  quality: { label: [26, 105, 66, 12], control: [24, 122, 66, 19] },
  input: { label: [124, 48, 50, 12], control: [132, 66, 36, 48] },
  hearth: { label: [178, 48, 54, 12], control: [186, 66, 36, 48] },
  body: { label: [232, 48, 52, 12], control: [240, 66, 36, 48] },
  bias: { label: [286, 48, 42, 12], control: [294, 66, 36, 48] },
  bloom: { label: [356, 48, 50, 12], control: [363, 66, 36, 48] },
  flux: { label: [410, 48, 44, 12], control: [417, 66, 36, 48] },
  patina: { label: [464, 48, 50, 12], control: [471, 66, 36, 48] },
  adapt: { label: [535, 48, 48, 12], control: [542, 66, 36, 48] },
  dynamics: { label: [589, 48, 42, 12], control: [596, 66, 36, 48] },
  recovery: { label: [643, 48, 58, 12], control: [650, 66, 36, 48] },
  velvet: { label: [535, 110, 48, 12], control: [542, 124, 36, 42] },
  detail: { label: [589, 110, 48, 12], control: [596, 124, 36, 42] },
  stereoProtect: { label: [643, 110, 58, 12], control: [650, 124, 36, 42] },
  mix: { label: [721, 48, 40, 12], control: [724, 66, 36, 48] },
  output: { label: [775, 48, 48, 12], control: [778, 66, 36, 48] },
  autoTrim: { label: [808, 119, 46, 12], control: [820, 137, 24, 24] },
};
const presentationFor = (param) => {
  const ui = layout[param];
  return { label: uiRect(ui.label), control: uiRect(ui.control) };
};

add({
  id: id(),
  maxclass: "panel",
  patching_rect: [20, 500, 740, 170],
  presentation: 1,
  presentation_rect: [-24, -24, deviceWidth + 48, deviceHeight + 48],
  background: 1,
  ignoreclick: 1,
  varname: "hearth_device_info",
  annotation_name: "Hearth",
  annotation: deviceInfo,
  hint: deviceInfo,
  bgcolor: palette.bg,
  bordercolor: [0.18, 0.15, 0.12, 1],
});
const addPresentationPanel = ({ rect, color, border, name, info }) =>
  add({
    id: id(),
    maxclass: "panel",
    patching_rect: [20 + rect[0], 500 + rect[1], rect[2], rect[3]],
    presentation: 1,
    presentation_rect: uiRect(rect),
    background: 1,
    ignoreclick: 1,
    varname: name,
    annotation_name: name,
    annotation: info,
    hint: info,
    rounded: 6,
    bgcolor: color,
    bordercolor: border,
  });
const addPresentationLabel = ({ text, rect, color = palette.text, size = 9, face = 0, just = 1 }) =>
  add({
    id: id(),
    maxclass: "comment",
    text,
    patching_rect: [20 + rect[0], 690 + rect[1], rect[2], rect[3]],
    presentation: 1,
    presentation_rect: uiRect(rect),
    fontsize: size,
    fontface: face,
    textjustification: just,
    textcolor: color,
  });

addPresentationPanel({
  rect: [8, 12, 100, 152],
  color: [0.09, 0.078, 0.066, 1],
  border: withAlpha(palette.heat, 0.42),
  name: "Hearth Overview",
  info: deviceInfo,
});
addPresentationPanel({
  rect: [116, 14, 214, 152],
  color: withAlpha(blend(palette.heat, palette.bg, 0.84), 0.96),
  border: palette.text,
  name: "Shape",
  info: "Shape controls set the gain, low-mid emphasis, main heat amount, and asymmetric tube-bias color before the parallel lanes.",
});
addPresentationPanel({
  rect: [348, 14, 170, 152],
  color: withAlpha(blend(palette.flux, palette.bg, 0.88), 0.96),
  border: palette.text,
  name: "Lanes",
  info: "The Bloom, Flux, and Patina lanes add transient density, path-dependent memory, and subtle texture in parallel.",
});
addPresentationPanel({
  rect: [530, 14, 170, 152],
  color: withAlpha(blend(palette.servo, palette.bg, 0.88), 0.96),
  border: palette.text,
  name: "Servo / Tone",
  info: "The servo and tone stage adapts to source brightness and roughness, then smooths, restores detail, and protects stereo width.",
});
addPresentationPanel({
  rect: [712, 14, 168, 152],
  color: withAlpha(blend(palette.output, palette.bg, 0.86), 0.96),
  border: palette.text,
  name: "Blend",
  info: "Blend controls set wet/dry balance, output level, and automatic level compensation after processing.",
});

addPresentationLabel({ text: "HEARTH", rect: [20, 24, 80, 22], color: palette.heat, size: 18, face: 1, just: 0 });
addPresentationLabel({ text: "warmth-first", rect: [20, 53, 80, 14], color: palette.text, size: 9, just: 0 });
addPresentationLabel({ text: "adaptive", rect: [20, 68, 80, 14], color: palette.servo, size: 9, just: 0 });
addPresentationLabel({ text: "saturator", rect: [20, 83, 80, 14], color: palette.bloom, size: 9, just: 0 });

addPresentationLabel({ text: "1  SHAPE", rect: [126, 22, 74, 12], color: palette.heat, size: 9, face: 1, just: 0 });
addPresentationLabel({ text: "input, emphasis, tube bias", rect: [204, 22, 112, 12], color: palette.muted, size: 8, just: 2 });
addPresentationLabel({ text: "2  LANES", rect: [358, 22, 70, 12], color: palette.flux, size: 9, face: 1, just: 0 });
addPresentationLabel({ text: "density + memory", rect: [424, 22, 88, 12], color: palette.muted, size: 8, just: 2 });
addPresentationLabel({ text: "3  SERVO / TONE", rect: [540, 22, 96, 12], color: palette.servo, size: 9, face: 1, just: 0 });
addPresentationLabel({ text: "guard + polish", rect: [628, 22, 58, 12], color: palette.muted, size: 8, just: 2 });
addPresentationLabel({ text: "4  BLEND", rect: [722, 22, 64, 12], color: palette.output, size: 9, face: 1, just: 0 });
addPresentationLabel({ text: "final stage", rect: [772, 22, 44, 12], color: palette.muted, size: 8, just: 2 });

const plugin = add({
  id: id(),
  maxclass: "newobj",
  text: "plugin~",
  numinlets: 0,
  numoutlets: 2,
  outlettype: ["signal", "signal"],
  patching_rect: [34, 92, 74, 22],
});
const gen = add({
  id: id(),
  maxclass: "newobj",
  text: "gen~ Hearth-Core.gendsp @cpumeasure 1",
  numinlets: 2,
  numoutlets: 2,
  outlettype: ["signal", "signal"],
  patching_rect: [180, 92, 242, 22],
});
const plugout = add({
  id: id(),
  maxclass: "newobj",
  text: "plugout~ @chans 2",
  numinlets: 2,
  numoutlets: 0,
  patching_rect: [500, 92, 74, 22],
});
connect(plugin, 0, gen, 0);
connect(plugin, 1, gen, 1);
connect(gen, 0, plugout, 0);
connect(gen, 1, plugout, 1);

add({
  id: id(),
  maxclass: "comment",
  text: "Hearth - warm adaptive saturation for Max for Live 10+",
  patching_rect: [32, 22, 420, 22],
});
add({
  id: id(),
  maxclass: "comment",
  text: "Save this patch as a Max Audio Effect (.amxd). Keep Hearth-Core.gendsp beside it.",
  patching_rect: [32, 46, 530, 22],
});

const presentationLoad = add({
  id: id(),
  maxclass: "newobj",
  text: "loadmess presentation 1",
  numinlets: 1,
  numoutlets: 1,
  outlettype: [""],
  patching_rect: [32, 72, 140, 22],
});
const thispatcher = add({
  id: id(),
  maxclass: "newobj",
  text: "thispatcher",
  numinlets: 1,
  numoutlets: 2,
  outlettype: ["", ""],
  patching_rect: [180, 72, 84, 22],
});
connect(presentationLoad, 0, thispatcher, 0);
const widthLoad = add({
  id: id(),
  maxclass: "newobj",
  text: `loadmess setwidth ${deviceWidth}`,
  numinlets: 1,
  numoutlets: 1,
  outlettype: [""],
  patching_rect: [32, 100, 150, 22],
});
const liveThisDevice = add({
  id: id(),
  maxclass: "newobj",
  text: "live.thisdevice",
  numinlets: 1,
  numoutlets: 3,
  outlettype: ["bang", "int", ""],
  patching_rect: [190, 100, 96, 22],
});
connect(widthLoad, 0, liveThisDevice, 0);

const controls = [
  ["hearth", "Hearth", 0, 100, 35, "0. 1."],
  ["body", "Body dB", -6, 6, 1.5, null],
  ["velvet", "Velvet", 0, 100, 28, "0. 1."],
  ["bloom", "Bloom", 0, 100, 24, "0. 1."],
  ["flux", "Flux", 0, 100, 18, "0. 1."],
  ["bias", "Bias", -25, 25, 4, "-0.25 0.25"],
  ["adapt", "Adapt", 0, 100, 62, "0. 1."],
  ["detail", "Detail", 0, 100, 58, "0. 1."],
  ["dynamics", "Dynamics", 0, 100, 42, "0. 1."],
  ["recovery", "Recovery ms", 20, 600, 140, null],
  ["stereoProtect", "Stereo", 0, 100, 70, "0. 1."],
  ["mix", "Mix", 0, 100, 100, "0. 1."],
  ["output", "Output dB", -24, 24, 0, null],
  ["quality", "Quality", 0, 2, 1, null],
  ["autoTrim", "Auto Trim", 0, 1, 1, null],
  ["patina", "Patina", 0, 10, 0, "0. 1."],
  ["input", "Input dB", -24, 24, 0, null],
];

controls.forEach(([param, label, min, max, initial, scale], i) => {
  const col = i % 6;
  const row = Math.floor(i / 6);
  const x = 34 + col * 118;
  const y = 160 + row * 112;
  const ui = presentationFor(param);
  const meta = controlMeta[param];

  add({
    id: id(),
    maxclass: "comment",
    text: uiLabels[param],
    patching_rect: [x, y - 22, 104, 20],
    presentation: 1,
    presentation_rect: ui.label,
    fontsize: 9,
    textjustification: 1,
    textcolor: meta.color,
  });

  const valueAttrs = {
    parameter_longname: label,
    parameter_shortname: meta.short,
    parameter_type: meta.kind === "menu" || meta.kind === "toggle" ? 2 : 0,
    parameter_mmin: min,
    parameter_mmax: max,
    parameter_initial_enable: 1,
    parameter_initial: [initial],
    parameter_info: meta.info,
  };
  if (meta.enum) valueAttrs.parameter_enum = meta.enum;
  if (meta.unitstyle) valueAttrs.parameter_unitstyle = meta.unitstyle;

  const controlBox = {
    id: id(),
    maxclass: meta.kind === "menu" ? "live.menu" : meta.kind === "toggle" ? "live.toggle" : "live.dial",
    numinlets: 1,
    numoutlets: meta.kind === "menu" ? 3 : 2,
    outlettype: meta.kind === "menu" ? ["int", "anything", "float"] : ["", "float"],
    patching_rect: [x, y, 50, 48],
    presentation: 1,
    presentation_rect: ui.control,
    varname: `hearth_${param}`,
    parameter_enable: 1,
    parameter_annotation_name: label,
    parameter_info: meta.info,
    parameter_longname: label,
    parameter_shortname: meta.short,
    parameter_type: meta.kind === "menu" || meta.kind === "toggle" ? 2 : 0,
    parameter_mmin: min,
    parameter_mmax: max,
    parameter_initial_enable: 1,
    parameter_initial: [initial],
    annotation_name: label,
    annotation: meta.info,
    hint: meta.info,
    fontsize: 9,
    textcolor: palette.text,
    color: meta.color,
    bordercolor: withAlpha(meta.color, 0.55),
    focusbordercolor: meta.color,
    saved_attribute_attributes: {
      valueof: valueAttrs,
    },
  };
  if (meta.enum) controlBox.parameter_enum = meta.enum;
  if (meta.unitstyle) controlBox.parameter_unitstyle = meta.unitstyle;
  if (meta.kind === "dial") {
    controlBox.showname = 0;
    controlBox.shownumber = 1;
    controlBox.valuepopup = 1;
    controlBox.valuepopuplabel = 3;
    controlBox.dialcolor = withAlpha(meta.color, 0.88);
    controlBox.fgdialcolor = withAlpha(meta.color, 0.20);
    controlBox.activedialcolor = meta.color;
    controlBox.activefgdialcolor = withAlpha(meta.color, 0.24);
    controlBox.needlecolor = withAlpha(palette.text, 0.72);
    controlBox.activeneedlecolor = palette.text;
    controlBox.panelcolor = [0.018, 0.017, 0.016, 0.86];
    controlBox.tricolor = meta.color;
  }
  if (meta.kind === "menu") {
    controlBox.items = meta.enum;
    controlBox.activebgcolor = [0.055, 0.052, 0.048, 1];
    controlBox.hltcolor = meta.color;
    controlBox.hlttextcolor = palette.bg;
    controlBox.tricolor = meta.color;
    controlBox.bgcolor = [0.045, 0.042, 0.039, 1];
  }
  if (meta.kind === "toggle") {
    controlBox.activebgcolor = [0.045, 0.042, 0.039, 1];
    controlBox.activebgoncolor = meta.color;
    controlBox.bgcolor = [0.045, 0.042, 0.039, 1];
    controlBox.bgoncolor = meta.color;
  }

  const dial = add(controlBox);

  const num = add({
    id: id(),
    maxclass: "flonum",
    numinlets: 1,
    numoutlets: 2,
    outlettype: ["", "bang"],
    patching_rect: [x + 54, y + 15, 48, 22],
    minimum: min,
    maximum: max,
  });

  let valueSource = dial;
  connect(dial, 0, num, 0);

  if (scale) {
    const scaleObj = add({
      id: id(),
      maxclass: "newobj",
      text: `scale ${min} ${max} ${scale}`,
      numinlets: 6,
      numoutlets: 1,
      outlettype: ["float"],
      patching_rect: [x, y + 56, 104, 22],
    });
    connect(dial, 0, scaleObj, 0);
    valueSource = scaleObj;
  }

  const msg = add({
    id: id(),
    maxclass: "message",
    text: `${param} $1`,
    numinlets: 2,
    numoutlets: 1,
    outlettype: [""],
    patching_rect: [x, y + 82, 104, 22],
  });
  connect(valueSource, 0, msg, 0);
  connect(msg, 0, gen, 0);

  const load = add({
    id: id(),
    maxclass: "newobj",
    text: `loadmess ${initial}`,
    numinlets: 1,
    numoutlets: 1,
    outlettype: [""],
    patching_rect: [x, y + 108, 104, 22],
  });
  connect(load, 0, dial, 0);
});

const maxpat = {
  patcher: {
    fileversion: 1,
    appversion,
    classnamespace: "box",
    rect: [80, 80, deviceWidth, deviceHeight + 20],
    bgcolor: palette.bg,
    editing_bgcolor: palette.bg,
    locked_bgcolor: palette.bg,
    presentation_bgcolor: palette.bg,
    enablehscroll: 0,
    enablevscroll: 0,
    openinpresentation: 1,
    devicewidth: deviceWidth,
    annotation: deviceInfo,
    gridonopen: 1,
    gridsize: [15, 15],
    boxes,
    lines,
  },
};

fs.writeFileSync(path.join(root, "Hearth.maxpat"), JSON.stringify(maxpat, null, 2));
