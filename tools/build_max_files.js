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
  },
  hearth: {
    short: "Hearth",
    kind: "dial",
    info: "Main warmth and drive amount. Higher settings create denser saturation and stronger harmonic color.",
  },
  body: {
    short: "Body",
    kind: "dial",
    info: "Low-mid body emphasis before the nonlinear stage. Positive values add weight; negative values thin the drive path.",
    unitstyle: 4,
  },
  bias: {
    short: "Bias",
    kind: "dial",
    info: "Asymmetry bias for the saturation curve. Use subtle amounts for richer even-harmonic color.",
  },
  velvet: {
    short: "Velvet",
    kind: "dial",
    info: "Softens upper harmonics after saturation. Higher values make the tone smoother and less edgy.",
  },
  detail: {
    short: "Detail",
    kind: "dial",
    info: "Restores a little presence after smoothing. Raise it when the result needs more articulation.",
  },
  dynamics: {
    short: "Dyn",
    kind: "dial",
    info: "Makes drive respond to level and envelope. Higher values push loud passages more dynamically.",
  },
  recovery: {
    short: "Recov",
    kind: "dial",
    info: "Envelope recovery time in milliseconds for adaptive drive and flux movement.",
    unitstyle: 2,
  },
  output: {
    short: "Out",
    kind: "dial",
    info: "Output trim after processing. Use this to level-match the processed signal.",
    unitstyle: 4,
  },
  bloom: {
    short: "Bloom",
    kind: "dial",
    info: "Transient-local parallel density. Higher values make attacks feel fuller and more saturated.",
  },
  flux: {
    short: "Flux",
    kind: "dial",
    info: "Adds a path-dependent flux lane for tape-like movement and memory in the saturation.",
  },
  adapt: {
    short: "Adapt",
    kind: "dial",
    info: "Adaptive protection amount. Higher values back off harshness when the source gets bright or rough.",
  },
  stereoProtect: {
    short: "Stereo",
    kind: "dial",
    info: "Keeps the side channel from overdriving relative to the center, preserving stereo stability.",
  },
  mix: {
    short: "Mix",
    kind: "dial",
    info: "Wet/dry blend between the input and Hearth's processed signal.",
    unitstyle: 5,
  },
  quality: {
    short: "Qual",
    kind: "menu",
    info: "Anti-aliasing quality for the tube lane: Eco, Live, or High. Higher quality costs more CPU.",
    enum: ["Eco", "Live", "High"],
  },
  autoTrim: {
    short: "Auto",
    kind: "toggle",
    info: "Automatically compensates output level against the input envelope for easier level matching.",
    enum: ["Off", "On"],
  },
  patina: {
    short: "Patina",
    kind: "dial",
    info: "Adds a very subtle deterministic low-level texture. Keep low for clean material.",
  },
};
const presentationFor = (param) => {
  const i = uiOrder.indexOf(param);
  const row = i >= 9 ? 1 : 0;
  const col = row ? i - 9 : i;
  const startX = row ? 164 : 134;
  const step = row ? 74 : 68;
  const x = startX + col * step;
  const meta = controlMeta[param];
  const y = row ? 116 : 43;
  const control =
    meta.kind === "menu"
      ? [x - 14, y + 10, 68, 20]
      : meta.kind === "toggle"
        ? [x + 9, y + 5, 25, 25]
        : [x, y, 42, 52];
  return {
    control,
    label: [x - 14, row ? 99 : 26, 70, 13],
  };
};

add({
  id: id(),
  maxclass: "panel",
  patching_rect: [20, 500, 740, 170],
  presentation: 1,
  presentation_rect: [0, 0, 770, 170],
  background: 1,
  ignoreclick: 1,
  bgcolor: [0.105, 0.095, 0.082, 1],
  bordercolor: [0.18, 0.15, 0.12, 1],
});
add({
  id: id(),
  maxclass: "comment",
  text: "HEARTH",
  patching_rect: [35, 505, 100, 24],
  presentation: 1,
  presentation_rect: [18, 23, 98, 24],
  fontsize: 18,
  textcolor: [1, 0.72, 0.43, 1],
});
add({
  id: id(),
  maxclass: "comment",
  text: "warm adaptive saturation",
  patching_rect: [35, 531, 165, 18],
  presentation: 1,
  presentation_rect: [18, 49, 118, 34],
  fontsize: 10,
  textcolor: [0.78, 0.69, 0.58, 1],
});
add({
  id: id(),
  maxclass: "comment",
  text: "TONE",
  patching_rect: [35, 555, 80, 14],
  presentation: 1,
  presentation_rect: [18, 94, 70, 14],
  fontsize: 9,
  textcolor: [0.52, 0.77, 0.70, 1],
});
add({
  id: id(),
  maxclass: "comment",
  text: "MOTION",
  patching_rect: [35, 573, 80, 14],
  presentation: 1,
  presentation_rect: [18, 114, 70, 14],
  fontsize: 9,
  textcolor: [0.72, 0.62, 0.88, 1],
});

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
    textcolor: [0.84, 0.78, 0.68, 1],
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
    outlettype: meta.kind === "menu" ? ["", "", "float"] : ["", "float"],
    patching_rect: [x, y, 50, 48],
    presentation: 1,
    presentation_rect: ui.control,
    varname: `hearth_${param}`,
    parameter_enable: 1,
    annotation_name: label,
    annotation: meta.info,
    hint: meta.info,
    fontsize: 9,
    saved_attribute_attributes: {
      valueof: valueAttrs,
    },
  };
  if (meta.kind === "dial") {
    controlBox.showname = 0;
    controlBox.shownumber = 1;
    controlBox.valuepopup = 1;
    controlBox.valuepopuplabel = 3;
  }
  if (meta.kind === "menu") {
    controlBox.items = meta.enum;
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
    rect: [80, 80, 770, 190],
    bgcolor: [0.08, 0.075, 0.07, 1],
    openinpresentation: 1,
    devicewidth: 770,
    gridonopen: 1,
    gridsize: [15, 15],
    boxes,
    lines,
  },
};

fs.writeFileSync(path.join(root, "Hearth.maxpat"), JSON.stringify(maxpat, null, 2));
