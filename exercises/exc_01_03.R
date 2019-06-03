RISmed::EUtilsSummary("pinkeye", type="esearch", db="pubmed", datetype='pdat', mindate=2000, maxdate=2015, retmax=500)

data <- revtools::read_bibliography("references.bib")

results <- revtools::screen_titles(data)
