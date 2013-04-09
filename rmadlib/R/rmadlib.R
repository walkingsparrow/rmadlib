
## ------------------------------------------------------------------------
## start shiny GUI
## ------------------------------------------------------------------------

rmadlib <- function ()
{
    ## rmadlib's installation path
    .localVars$pkg.path <- path.package(.this.pkg.name)
    ## gui folder installation path
    gui.dir <- paste(.localVars$pkg.path, "/gui", sep = "")

    cat("\nWelcome to poor men's Alpine ...\n")
    runApp(gui.dir)
    cat("\nSee you later\n\n")
}
