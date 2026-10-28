# Rope Test Data Viewer

Open `index.html` in a modern browser, then choose one or more `.xls`, `.xlsx`, `.xlsm`, or `.csv` test files. You can also drag files onto the file panel. The viewer parses selected files locally in the browser; it does not upload workbook data.

To load the sample workbooks, select the files from the `12102026` folder with the file picker or drag them onto the page. To serve the page locally from the project root:

```powershell
python -m http.server 8000
```

Then open `http://localhost:8000/dataviewer/`.

The viewer displays the Date, Gage Length Correction, Fmax, dL (Fmax), and L0 values from the workbook?s `Results` sheet, and automatically opens the first measurement sheet containing `Strain` and `Force` (or `Standard force`) columns. Drag across the plot to select a section, or enter point numbers, then calculate the ordinary least-squares force-versus-strain slope. The chart looks for a measurement sheet with `Strain` and `Force` or `Standard force` columns and a units row (`mm` or `%`; `N` or `kN`). Each workbook stays in browser memory. CSV export writes the valid plotted pairs for the selected sheet. Spreadsheet and chart libraries are loaded from public CDNs, so an internet connection is needed to open the viewer.

## Deployment

The repository workflow deploys this folder to GitHub Pages on every push to `main`. In the repository settings, set **Pages ? Build and deployment ? Source** to **GitHub Actions**.
