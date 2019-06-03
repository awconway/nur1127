RISmed::EUtilsSummary("pinkeye", type="esearch", db="pubmed", datetype='pdat', mindate=2000, maxdate=2015, retmax=500)

download.file("https://aconway.dev/NUR1027/references.bib", destfile = "references.bib", method = "auto")

data <- revtools::read_bibliography("references.bib")

results <- revtools::screen_titles(data)
