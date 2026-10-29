# Rope Test Data Viewer

Open `index.html` in a modern browser, then choose one or more `.xls`, `.xlsx`, `.xlsm`, or `.csv` test files. You can also drag files onto the file panel. The viewer parses selected files locally in the browser; it does not upload workbook data.

To load the sample workbooks, select the files from the `12102026` folder with the file picker or drag them onto the page. To serve the page locally from the project root:

```powershell
python -m http.server 8000
```

Then open `http://localhost:8000/dataviewer/`.

The viewer displays the Date, Gage Length Correction, Fmax, dL (Fmax), and L0 values from the workbook's `Results` sheet, and shows sheet selectors and defaults to the last sheet, with fallback to a detected strain/force sheet. Use mouse wheel or pinch to zoom, drag to pan, and click a start point and then an end point to select a fit interval. The reset button restores the original view. Enter rope diameter or area in mm/mm2; either input automatically calculates the other using a circular cross-section. Choose light or dark theme. The selection displays min/max stretch and force. An expandable test-procedure guide summarizes the documented sequence and links to the full laboratory procedure. Estimated stage chips are clickable: each highlights its estimated rows, displays stretch/force bounds, and calculates the selected range; enter known T_design and T_ref force targets in N for better boundaries; automatic targets are estimates from the first design peak and low-force baseline. Verify ranges against the instrument record. Estimate engineering Young modulus: the linear fit is extrapolated to zero force, that x-intercept is added to L0, and E = slope times adjusted L0 / area. The chart looks for a measurement sheet with `Strain` and `Force` or `Standard force` columns and a units row (`mm` or `%`; `N` or `kN`). Sheets without force–stretch data, including Parameters, Results, and Statistics, are shown as a table of their sheet contents when selected. Each workbook stays in browser memory. CSV export writes the valid plotted pairs for the selected sheet. Spreadsheet and chart libraries are loaded from public CDNs, so an internet connection is needed to open the viewer.

## Deployment

The repository workflow deploys this folder to GitHub Pages on every push to `main`. In the repository settings, set **Pages > Build and deployment > Source** to **GitHub Actions**.


The left panel lists estimated test stages and individually estimated dynamic cycles; click an item to highlight its points in the plot. Boundaries follow sequential crossings: N1 at 0.99 × F_max, N2 below 0.99 × F_max, N3 below 1.01 × F_min, and N4 above 1.01 × F_min. F_max uses the Results sheet value when available; F_min is the minimum force in the trace. Each cycle starts at its current low-force boundary, must rise above 0.5 × F_max, and ends on a drop below 1.01 × F_min. The suggested cycle-end threshold said 1.01 × F_max, which would stop near the peak; this implementation interprets that threshold as 1.01 × F_min to select a full cycle. Check all estimated ranges against the instrument record.

## Plot colors and legend

The chart legend is hidden. Read the plotted lines by their fixed colors: original test data are black in light theme and blue in dark theme; the selected section is red in both themes; and the linear fit is blue in light theme and white in dark theme. The theme switch updates these colors with the page.