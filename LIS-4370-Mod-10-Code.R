# --------------------------------------------------------------------
# SECTION 1: COURSE AND ASSIGNMENT DETAILS
# --------------------------------------------------------------------
# Course      : LIS-4370 R Programming for Data Science
# Assignment  : Assignment 10
# URL         : https://usflearn.instructure.com/courses/1926966/assignments/17693285
# Filename    : LIS-4370-Mod-10-Code.R
# Purpose     : Build an R package called Friedman
# Author      : Steven Barden
# Email       : StevenBarden@usf.edu
# Created     : 2025-03-31-0000 (EST)
# Updated     : 2025-03-31-0100 (EST)
# License     : UltraFree
# Description : This script creates a DESCRIPTION file for the Friedman package.

# --------------------------------------------------------------------
# SECTION 2: ENVIRONMENT SETUP
# --------------------------------------------------------------------

# Set Working Directory (fixed raw string)
tryCatch({
  baseDir <- r"(C:\Users\Steve\OneDrive\College\_____DESKTOP ICONS\2025-USF-Spring\Classes\4370\Mod10)"
  dir.exists(baseDir)  # Checks if the directory exists
  setwd(baseDir)
}, error = function(e) {
  stop("Error setting the working directory: ", e$message)
})


# Load Required Libraries (just for setup)
tryCatch({
  library(devtools)  # Helps build the package
}, error = function(e) {
  stop("Error loading libraries: ", e$message)
})

# --------------------------------------------------------------------
# SECTION 9: MAIN EXECUTION BLOCK
# --------------------------------------------------------------------

main <- function() {
  tryCatch({
    cat("Starting package setup...\n")
    
    # Create the DESCRIPTION file content
    desc_content <- c(
      "Package: Friedman",
      "Title: Analyzes Data Simply",
      "Version: 0.0.0.9000",
      "Authors@R: \"Steven Barden <StevenBarden@usf.edu> [aut, cre]\"",
      "Description: This package helps students analyze data quickly and easily.",
      "Depends: R (>= 3.1.2)",
      "License: CC0",
      "LazyData: true"
    )
    
    # Write the DESCRIPTION file
    writeLines(desc_content, "DESCRIPTION")
    cat("DESCRIPTION file created successfully.\n")
    
    cat("Package setup completed.\n")
  }, error = function(e) {
    stop("Error during package setup: ", e$message)
  })
}

# Run the script
main()
