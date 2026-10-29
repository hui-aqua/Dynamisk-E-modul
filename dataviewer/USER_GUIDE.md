# User Guide

## 1. Load a workbook

Use **Choose file** or drop a single workbook onto the file panel. The viewer accepts legacy `.xls`, `.xlsx`, `.xlsm`, and `.csv` files. A selected file opens automatically. Use **Clear** before loading another file if you want to remove the current file from the list.

The viewer reads files in the browser; workbook contents are not uploaded. The spreadsheet and chart libraries come from public CDNs, so the browser needs internet access.

## 2. Choose a worksheet

The viewer opens the last worksheet by default. It tries another sheet if the last one does not contain recognized measurement columns. Use the worksheet buttons above the plot to switch sheets.

A measurement sheet needs columns labelled `Strain` and `Force` or `Standard force`. Supported strain units are `mm` and `%`; supported force units include `N` and `kN`. The viewer converts kN to N. Other labels or units may not plot automatically.

The Results panel shows Date, Gage Length Correction, Fmax, dL (Fmax), and L0 when they can be read from the workbook's Results sheet.

## 3. Navigate the plot

- Scroll over the plot, or pinch on a touch device, to zoom.
- Drag on the plot to pan.
- Click **Reset zoom** to restore the full plot.
- The plot resizes with the browser window. Drag its bottom edge to change its height.

## 4. Select a range and calculate slope

Click a measured point to set the start, then click another point to set the end. Each click selects the nearest data point. The viewer uses all points between them, regardless of click order. The selection summary reports minimum and maximum stretch and force.

You can also enter point numbers in **From point** and **To point**, then choose **Calculate slope**. The linear fit is force versus stretch; its slope is in N/mm.

## 5. Calculate an engineering modulus estimate

Enter either rope **Diameter** or cross-sectional **Area**. The other value is calculated automatically using the circular area formula:

```text
Area = pi * Diameter^2 / 4
```

Values are in mm and mm2. For a non-circular section, enter the actual area directly.

For the selected data range, the viewer fits a straight line to force versus stretch and extrapolates it to zero force. It adds the fitted x-intercept to the Results L0 to form an adjusted gauge length, then calculates:

```text
E = fit slope * adjusted L0 / cross-sectional area
```

The result is shown in MPa and GPa. This estimate depends on the selected points and the assumed area and length. Check that the interval is suitable for a linear fit and that the intercept adjustment is appropriate for the test. A negative or unavailable intercept, missing L0, or missing area prevents a valid modulus result.

## 6. Review procedure stages

Expand **Laboratory test procedure guide** to see the test sequence. The viewer estimates clickable ranges for:

1. Virgin curve
2. 15-minute hold at T_design
3. First unloading curve
4. 5-minute hold at T_ref
5. Dynamic loading curve
6. Last dynamic load cycle

Clicking a stage highlights its estimated points, reports the bounds, and calculates the fit for that range. Stage detection uses force data and the T_design/T_ref targets; it does not read exact stage markers from the test machine. Confirm estimated ranges against the laboratory record before using them.

T_design defaults to the workbook Results Fmax. T_ref defaults to 1% of (Fmax * 2.3). Both targets are editable in N. The automatic last-cycle estimate uses the final T_ref-level point before the final T_design-level point; confirm it against the test record.

## 7. Export measurements

Choose **Export current sheet as CSV** to download valid plotted strain/force pairs from the active worksheet, including the corresponding units.

## 8. Theme

Use the sun/moon icon in the page header to switch between dark and light themes. The selected theme is remembered in the same browser.

## Troubleshooting

- **No curve appears:** Check that the active sheet contains recognized Strain and Force/Standard force columns and supported units. Try another worksheet button.
- **An old XLS workbook fails to parse:** Save a copy as XLSX in a spreadsheet app, then load that copy.
- **Parameters are missing:** The Results sheet may use different labels or a layout the viewer cannot recognize. The measurement plot may still work.
- **Stage ranges look wrong:** Enter the actual T_design and T_ref targets, then compare the estimates with the instrument record. Automatic ranges are not definitive stage markers.
- **The page looks unchanged after a code update:** Wait for the GitHub Pages deployment to finish, then refresh the page. A hard refresh may be needed to clear the browser cache.
