# Hearth

Hearth is a Max for Live 10+ warm-saturation device. It combines a low-latency Gen DSP core with anti-aliased tube saturation, quasi-hysteretic flux memory, transient bloom, stereo protection, and an adaptive Warmth Servo that backs off upper-band drive when a source becomes bright or rough.

## Repository Contents

```text
Hearth.maxpat              Max for Live audio-effect wrapper
Hearth-Core.gendsp         Generated Gen DSP patch
hearth_core.genexpr        Source GenExpr DSP implementation
tools/build_max_files.js   Regenerates Max files from GenExpr
releases/Hearth 1.0.amxd   Packaged device release
screenshots/               Device screenshots
deep-research-report.md    DSP and product research notes
```

## Requirements

- Ableton Live with Max for Live
- Max 10 or newer
- Node.js, only if regenerating Max files from `hearth_core.genexpr`

## Install / Use

Fast path:

1. Download or locate `releases/Hearth 1.0.amxd`.
2. Drop the device onto an Ableton Live audio track.
3. Start with conservative input level and increase the main Hearth control until the harmonic density is audible.

Development path:

1. Open `Hearth.maxpat` in Max 10+.
2. Keep `Hearth-Core.gendsp` in the same folder as `Hearth.maxpat`.
3. Save the patch as a Max Audio Effect / `.amxd`.
4. Drop the saved device into an Ableton Live audio track.

## Rebuild Runbook

Regenerate the Max files from the GenExpr source:

```bash
node tools/build_max_files.js
```

Then reopen `Hearth.maxpat` in Max and save/export the `.amxd` device.

## DSP Architecture

Implemented signal path:

- DC filtering and input conditioning.
- Brightness, roughness, level, and transient analysis.
- Warmth Servo for adaptive upper-band drive and post-emphasis control.
- Compensated low-mid/presence emphasis before the nonlinear core.
- Complementary de-emphasis after nonlinear processing.
- ADAA-style atan tube lane.
- Quasi-hysteretic flux-memory lane.
- Transient-gated bloom lane.
- Stereo protect, auto trim, patina, wet/dry mix, output trim, and final safety saturation.

`Quality` selects local tube-lane anti-aliasing depth:

- Eco: one ADAA evaluation.
- Live: two internal points.
- High: four internal points over the current sample segment.

The full signal path is not globally oversampled; this keeps the device low-latency for live use.

## Suggested Smoke Test

1. Load Hearth on a clean guitar, vocal, drum loop, or synth pad.
2. Set output trim so bypass and active levels are comparable.
3. Increase Hearth until warmth is audible.
4. Toggle Quality from Eco to Live/High and listen for upper-band smoothing.
5. Push a bright source and confirm the Warmth Servo keeps the result controlled rather than harsh.

## Troubleshooting

- If the device opens without DSP, confirm `Hearth-Core.gendsp` is next to `Hearth.maxpat`.
- If the `.amxd` does not load in Live, reopen the `.maxpat` in Max for Live and save a fresh Max Audio Effect.
- If edits to `hearth_core.genexpr` do not appear, rerun `node tools/build_max_files.js` and reopen the Max patch.
