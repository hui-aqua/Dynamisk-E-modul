# Rope Test Data Viewer

A browser-based viewer for rope and netting test workbooks. It plots force against strain or stretch, helps inspect test stages, and estimates an engineering modulus for a selected linear range.

## Quick start

1. Open [index.html](index.html) in a modern browser.
2. Click **Choose file** and select one `.xls`, `.xlsx`, `.xlsm`, or `.csv` workbook. You can also drop one workbook onto the file panel.
3. The selected workbook opens automatically. If no measurement sheet is recognized, the status message lists the parsed sheets and suggests the XLSX fallback. Use the worksheet buttons to switch sheets if needed. The laboratory procedure guide is in the left panel.
4. See [USER_GUIDE.md](USER_GUIDE.md) for plot controls, stage ranges, modulus calculation, and troubleshooting.

The viewer processes the workbook locally in your browser. It does not upload test data. It loads spreadsheet, chart, and zoom libraries from public CDNs, so an internet connection is required.

## Local web server

From the project root, run:

```powershell
python -m http.server 8000
```

Then open <http://localhost:8000/dataviewer/>.

## GitHub Pages

The Pages workflow deploys the `dataviewer` folder on pushes to `main`. In repository settings, set **Pages > Build and deployment > Source** to **GitHub Actions**.
