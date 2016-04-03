############ list_installed_packages.R ####################################

#First, create a list of currently installed packages on your system
List_Inst_Pkgs <-  installed.packages()

# Extract only names of the packages, rest info are irrelevant to us
Pkg_Names <-  as.vector(List_Inst_Pkgs[is.na(List_Inst_Pkgs[, "Priority"]), 1])

# Then ask at which location User wants to save this list
cat("At the prompt below, you have to provide a location for a default directory.")
cat("I will change that location as default directory to save the list of Installed Packages.")
source("https://raw.githubusercontent.com/imanojkumar/CreatDirectoryAndSetItAsDefault/master/CDSAD.R")

# Save the Package Names as Rdata file for reinstallation purposes
save(Pkg_Names, file="installed_packages.rda")

# If Successessfully save, Greet user.
cat("\n\nList of Installed Packages is succefully saved at the default directory (that you provided).")

