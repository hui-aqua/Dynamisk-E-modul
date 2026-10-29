# Data Viewer Project Notes

The viewer is a static, browser-based application. Read the [end-user guide](https://hui-aqua.github.io/Dynamisk-E-modul/user-guide.html) for operating instructions, the [developer guide](https://hui-aqua.github.io/Dynamisk-E-modul/developer-guide.html) for implementation and maintenance, and the [laboratory test procedure](https://hui-aqua.github.io/Dynamisk-E-modul/procedure.html) for test steps.

## Local preview on Windows

In PowerShell, from this folder, run:

```powershell
./preview-local.ps1
```

This serves the repository root and opens `http://localhost:8000/dataviewer/`. Keep the PowerShell window open; press Ctrl+C to stop. Use `./preview-local.ps1 -Port 8080` to select another port. Python 3 is required.

Alternatively, from the repository root:

```powershell
python -m http.server 8000
```

Then open `http://localhost:8000/dataviewer/`.

The viewer parses selected workbooks in the browser and does not upload them. SheetJS, Chart.js, and chartjs-plugin-zoom load from public CDNs, so the browser needs internet access. The table displays up to 5,000 rows; CSV export includes every valid plotted pair.

## Deployment

The GitHub Actions workflow in `../.github/workflows/deploy-pages.yml` deploys the complete `dataviewer` folder on every push to `main`. Set GitHub Pages to use **GitHub Actions** as the build and deployment source.
