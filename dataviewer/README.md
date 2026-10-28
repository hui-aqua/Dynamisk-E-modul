# Rope Test Data Viewer

Open `index.html` in a modern browser, then choose one or more `.xls`, `.xlsx`, `.xlsm`, or `.csv` test files. You can also drag files onto the file panel. The viewer parses selected files locally in the browser; it does not upload workbook data.

The **Load 12102026 examples** button loads the four example workbooks from the project folder when served from a local web server (it cannot read sibling folders when opened as a `file://` URL). To run that mode from the project root:

```powershell
python -m http.server 8000
```

Then open `http://localhost:8000/dataviewer/`.

The chart looks for a measurement sheet with `Strain` and `Force` or `Standard force` columns and a units row (`mm` or `%`; `N` or `kN`). Each workbook stays in browser memory. CSV export writes the valid plotted pairs for the selected sheet. Spreadsheet and chart libraries are loaded from public CDNs, so an internet connection is needed to open the viewer.

## GitHub

This folder is ready to commit. The parent workspace currently has no `.git` directory or configured remote. From the existing clone of your GitHub repository, copy this `dataviewer` folder into the repository, then commit and push it.
