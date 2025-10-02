# Install and load necessary R packages for data analysis
install_required_packages <- function() {
  # List of packages to install
  packages <- c(
    # Core data manipulation and visualization
    "tidyverse",     # Collection of packages for data science (dplyr, ggplot2, etc.)
    "knitr",         # For dynamic report generation
    "rmarkdown",     # For creating R Markdown documents
    "plotly",        # For interactive plots
    
    # Statistics
    "lmtest",        # For tests on linear models
    "car",           # Companion to Applied Regression
    "broom",         # Converts statistical objects into tidy data frames
    
    # Data import/export
    "readxl",        # For reading Excel files
    "writexl",       # For writing Excel files
    "jsonlite",      # For working with JSON data
    
    # Others
    "hrbrthemes",    # Additional themes for ggplot2
    "scales",        # For better axis formatting
    "viridis"        # Color palettes for better visualization
  )
  
  # Check which packages are not installed
  not_installed <- packages[!(packages %in% installed.packages()[,"Package"])]
  
  # Install missing packages
  if(length(not_installed) > 0) {
    cat("Installing the following packages:", paste(not_installed, collapse=", "), "\n")
    install.packages(not_installed)
  } else {
    cat("All required packages are already installed.\n")
  }
  
  # Load all packages
  invisible(lapply(packages, library, character.only = TRUE))
  
  cat("All packages loaded successfully!\n")
}

# Run the function to install and load packages
install_required_packages()