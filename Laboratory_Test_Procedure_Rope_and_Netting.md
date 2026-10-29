# Laboratory Test Procedure

## Characterisation of aquaculture ropes and netting

### 1. Purpose

Determine tensile load–strain behaviour for engineering analysis. Record the virgin load–strain curve, permanent creep or construction strain, and the dynamic load–strain curve. The dynamic measurements may be used to derive a constitutive curve for engineering models.

### 2. Test specimens

Rope and netting specimens must represent the material and construction being assessed. For netting, use a representative panel containing at least 10 meshes in both the loading and transverse directions; a 15 × 15 mesh panel is recommended.

| Example ID | Material | Construction or mesh | Nominal size | Breaking strength |
|---|---|---|---|---|
| R1 | UHMWPE | Braided rope | 12 mm | 16,000 kg |
| R2 | Tufrope | 3-strand rope | 22 mm | 8,400 kg |
| N1 | Nylon | 40 mm mesh, 40# thread | — | 152 |
| N2 | Entex (UHMWPE) | 40 mm mesh, 18# thread | — | 150 |

These are example values. Confirm breaking-strength units and ratings from the manufacturer; units were not specified for the netting examples.

### 3. Pre-test information

Record the specimen ID, material, construction, nominal diameter or mesh specification, wet or dry condition, water temperature (10 °C default) and room temperature (20 °C default), and the manufacturer’s breaking strength (MBS/MBL).

Use the project’s applicable design and reference load definitions. The example relationships below are starting values; confirm the governing test specification and units for the specimen:

- Rope: `T_design = MBS / 2.3`
- Netting: `T_design = MBS / (2 × 2.3)`
- Rope: `T_ref = 1% × MBS`
- Netting: `T_ref = 0.5 × 1% × MBS`

A design load based on these relationships is intended to approximate the maximum design load used in NS 9415 structural assessments.

### 4. Specimen preparation

1. Immerse specimens in tap water for at least 24 hours.
2. Install specimens wet whenever practical.
3. Inspect each specimen for visible damage before testing.

### 5. Test procedure

1. **Install the specimen.** Mount it in the test machine, align the loading axis, and install the displacement reference tape.
2. **Establish the initial reference length, L0.** Apply `T_ref`, hold for 15 minutes, and measure and record L0.
3. **Measure the virgin curve.** Load continuously from `T_ref` to `T_design` at a rate corresponding to approximately 1% strain per minute.
4. **Condition at design load.** Maintain `T_design` for 15 minutes.
5. **Unload.** Return continuously from `T_design` to `T_ref` at the same rate used during loading.
6. **Measure permanent creep.** Hold at `T_ref` for 5 minutes, record the length as L5, and calculate:

   `Permanent creep = (L5 − L0) / L0`

   For ropes, this is construction strain. For netting, it represents permanent set from mesh reorientation, knot tightening, and structural settlement.

7. **Measure the dynamic load–strain curve.** Reload from `T_ref` to `T_design` using force control at the same loading rate. Record load and elongation continuously for the specified number of cycles (20 cycles in this procedure unless the test plan specifies otherwise).

### 6. Use of the data in engineering models

Keep the complete measured loading and unloading cycles as the test record. Where a model requires a single monotonic nonlinear relationship, derive and document the chosen backbone curve from the measured data; do not substitute a cyclic loop without checking the model’s input requirements. Retain the test target, reference load, specimen dimensions, L0, and the data-processing choices with the exported curve.

### 7. Review and traceability

Record the test machine, specimen identity, dates, environmental conditions, force and displacement units, and any deviations from this procedure. Check the plotted trace and selected fit ranges against the machine record before using calculated parameters.
