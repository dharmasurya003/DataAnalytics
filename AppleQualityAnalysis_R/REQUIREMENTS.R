# Install necessary packages for apple_quality_analytics_using_R.Rmd

# List of required packages
required_packages <- c(
  "dplyr",      # Data manipulation
  "ggplot2",    # Data visualization
  "tidyr",      # Data tidying
  "readr",      # Reading CSV, text files
  "rmarkdown",  # For R Markdown processing
  # Add other packages used in your analysis
)

# Function to install missing packages
install_if_missing <- function(packages) {
  for (pkg in packages) {
    if (!require(pkg, character.only = TRUE, quietly = TRUE)) {
      install.packages(pkg)
    }
  }
}

# Install missing packages
install_if_missing(required_packages)

# Load the packages
lapply(required_packages, library, character.only = TRUE)
