# Hearth

Hearth is a Max for Live 10+ warm-saturation device implementation based on `deep-research-report.md`.

## Files

- `Hearth.maxpat` - Max for Live audio-effect wrapper.
- `Hearth-Core.gendsp` - Gen DSP patch generated from the source codebox.
- `hearth_core.genexpr` - source GenExpr DSP implementation.
- `tools/build_max_files.js` - regenerates the Max files from `hearth_core.genexpr`.

## Loading

1. Open `Hearth.maxpat` in Max 10+.
2. Confirm `Hearth-Core.gendsp` is in the same folder.
3. Save the patch as a Max Audio Effect / `.amxd` from Max for Live.
4. Drop the saved device into an Ableton Live audio track.

## DSP Implemented

- DC filtering and input conditioning.
- Brightness, roughness, level, and transient analysis.
- Warmth Servo that backs off upper-band drive and post-emphasis when the source gets bright or rough.
- Compensated low-mid/presence emphasis before the nonlinear core and complementary de-emphasis after it.
- ADAA-style atan tube lane.
- Quasi-hysteretic flux-memory lane.
- Transient-gated bloom lane.
- Stereo protect, auto trim, patina, wet/dry mix, output trim, and final safety saturation.

`Quality` selects local tube-lane anti-aliasing depth: Eco uses one ADAA evaluation, Live uses two internal points, and High uses four internal points over the current sample segment. The full signal path is not globally oversampled, keeping the default device low-latency for live use.

## Rebuild

```bash
node tools/build_max_files.js
```
