####  This script will reinstall the packages from the saved list


cat("What you want me to do? Select your option number: \n\n1. Create a list of your installed packages and store the list in a default directory.\n")
cat("2. Use an existing list of packages from your old R installation library and reinstall them in the current R installation.")

myoption <- readline('Enter your option no.: ')

if (myoption != "1" && myoption != "2"){
  cat("Not a valid selection")
  return
} else if (myoption == "1") {
  cat("you selected Option No. ", myoption, " Preparing...\n")
  source("https://raw.githubusercontent.com/imanojkumar/Install_Package_From_List/master/list_installed_packages.R")
  return
} else {
  cat("you selected Option No. ", myoption, " Preparing...\n")
  directory <-  readline('Enter Path to Directory to read list of files from (e.g.:  E:/MyDirectory): ')
  setwd(directory)
  load("installed_packages.rda")
  # And one by one restore the packages
  for (mycount in 1:length(Pkg_Names)) {
    # Pick one name at a time and install the package in R
    install.packages(Pkg_Names[mycount]) }
}


