# Laboratory Test Procedure

Characterisation of Aquaculture Ropes and Netting for AquaSim Modelling

## 1. Purpose

This procedure is used to determine the tensile load-strain behaviour of aquaculture ropes and netting intended for engineering analysis and AquaSim modelling.

The procedure provides:

- Virgin load-strain curve
- Permanent creep (construction strain)
- Dynamic load-strain curve

The dynamic load-strain curve is intended to be used as the primary nonlinear constitutive relationship in AquaSim.

---

## 2. Test Specimens

#### Rope Specimens (examples)

| Specimen ID | Material | Construction | Nominal Size | MBL |
|---|---|---|---|---|
| R1 | UHMWPE | Braided rope | 12 mm | 16 000 kg |
| R2 | Tufrope | 3-strand rope | 22 mm | 8 400 kg |

#### Netting Specimens (examples)

| Specimen ID | Material | Mesh Opening | Thread # | MBL |
|---|---|---|---|---|
| N1 | Nylon | 40 mm | 40# | 152 |
| N2 | Entex* | 40 mm | 18# | 150 |

Entex* is a commercial name, and its material is UHMWPE.
For netting tests, the specimen shall consist of a representative net panel containing at least 10 meshes in both the loading and transverse directions. A 15 × 15 mesh panel is recommended.

---

## 3. Pre-Test Information

Record the following before testing:

- Specimen ID
- Material
- Construction type
- Nominal diameter (rope)
- Mesh size and thread specification (netting)
- Wet or dry condition
- Water temperature (optimal, 10 deg as default)
- Test room temperature (optimal, 20 deg as default)
- Manufacturer's Minimum Breaking Strength (MBS)

Definition:

#### Design Load

$$
T_{design:ROPE}=\frac{MBS}{2.3}
\\
\\

T_{design:NETTING}=\frac{MBS}{2 \times2.3}
$$

This corresponds approximately to the maximum design load used in NS 9415 structural assessments.

#### Reference Load

$$
T_{ref:ROPE}=1\% \times MBS \\
\\

T_{ref:Netting}=0.5 \times1\% \times MBS
$$

---

## 4. Specimen Preparation

1. Immerse the specimens in tap water for a minimum of 24 hours.
2. Install the specimens in a wet condition whenever practical.
4. Inspect each specimen for visible damage before testing.

---

## 5.Test procedure

### Step 1: Install the Specimen

- Mount the specimen in the test machine.
- Align the loading axis carefully.
- Install the displacement reflex tape.

### Step 2: Establish the Initial Reference Length, L₀

1. Apply the reference load, $T_{ref}$.
2. Hold for 15 minutes.
3. Measure and record the initial length, $L_0$.

### Step 3: Measure the Virgin Curve

1. Load continuously from $T_{ref}$ to $T_{design}$.

2. > Use a l*oading rate corresponding to approximately 1% strain per minute.*

### Step 4: Conditioning Hold

1. Maintain the load at $T_{design}$.
2. Hold for 15 minutes.

### Step 5: Unloading

1. Unload continuously from $T_{design}$ to $T_{ref}$.

2. > Use the same rate as during loading.

### Step 6: Measure Permanent Creep

1. Hold at $T_{ref}$ for 5 minutes. 
2. Record the length by the end of 5 mins holding time as $L_5$. 
3. Calculate:

$$
\text{Permanent creep}=\frac{L_5-L_0}{L_0}
$$

For ropes, this parameter represents construction strain.

For netting, it represents permanent set resulting from mesh reorientation, knot tightening and structural settlement.

### Step 7: Measure the Dynamic Load-strain Curve

1. Reload continuously from $T_{ref}$ to $T_{design}$.
4. > Use the same loading rate as in Step 3. **Force control speed.** for 20 cycled
5. Record load and elongation continuously throughout the test.



## 6. What AquaSim Needs

AquaEdit requires **a single monotonic nonlinear force–strain curve**, given as:

| Strain X [m/m] | Axial Force [N] |
| -------------- | --------------- |
| ...            | ...             |

This curve represents the *backbone stiffness* of the line.

👉 **Important:**
 Dynamic solvers (AquaSim, AquaEdit, OrcaFlex, MoorDyn, etc.) **cannot accept cyclic loading–unloading loops**.
 They need a **single increasing curve**.

