resources <- bioconductor.sty <- bioconductor2.sty <- bioconductor.css <- NULL

# resolve paths once during package load
.onLoad <- function(...) {
    resources <<- system.file(package = "BiocStyle", "resources")
    bioconductor.sty <<- file.path(resources, "tex", "Bioconductor.sty")
    bioconductor2.sty <<- file.path(resources, "tex", "Bioconductor2.sty")
    bioconductor.css <<- file.path(resources, "html", "bioconductor.css")
}
