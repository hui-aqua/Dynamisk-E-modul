# Rope Test Data Viewer

Open `index.html` in a modern browser, then choose one or more `.xls`, `.xlsx`, `.xlsm`, or `.csv` test files. You can also drag files or a folder onto the file panel; folder contents are listed, and selecting a workbook opens it. Use the folder picker when your browser does not support dropping folders. The viewer parses selected files locally in the browser; it does not upload workbook data.

To load the sample workbooks, select the files from the `12102026` folder with the file picker or drag them onto the page. To serve the page locally from the project root:

```powershell
python -m http.server 8000
```

Then open `http://localhost:8000/dataviewer/`.

The viewer displays the Date, Gage Length Correction, Fmax, dL (Fmax), and L0 values from the workbook's `Results` sheet, and shows sheet selectors and defaults to the last sheet, with fallback to a detected strain/force sheet. Use mouse wheel or pinch to zoom, drag to pan, and click a start point and then an end point to select a fit interval. The reset button restores the original view. Enter rope diameter or area in mm/mm2; either input automatically calculates the other using a circular cross-section. Use the sun/moon icon to toggle light or dark theme. The selection displays min/max stretch and force. An expandable test-procedure guide summarizes the documented sequence and links to the full laboratory procedure. Estimated stage chips are clickable: each highlights its estimated rows, displays stretch/force bounds, and calculates the selected range; enter known T_design and T_ref force targets in N for better boundaries; automatic targets are estimates from the first design peak and low-force baseline. Verify ranges against the instrument record. Estimate engineering Young modulus: the linear fit is extrapolated to zero force, that x-intercept is added to L0, and E = slope times adjusted L0 / area. The chart looks for a measurement sheet with `Strain` and `Force` or `Standard force` columns and a units row (`mm` or `%`; `N` or `kN`). Each workbook stays in browser memory. CSV export writes the valid plotted pairs for the selected sheet. Spreadsheet and chart libraries are loaded from public CDNs, so an internet connection is needed to open the viewer.

## Deployment

The repository workflow deploys this folder to GitHub Pages on every push to `main`. In the repository settings, set **Pages > Build and deployment > Source** to **GitHub Actions**.
