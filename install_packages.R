# Install Required R Packages for Statistical Testing Course
# Run this script once before using the course materials

cat("Installing required packages for statistical testing course...\n\n")

# List of required packages
packages <- c(
  "tidyverse",    # Data manipulation and visualization suite
  "readr",        # Data import
  "dplyr",        # Data wrangling
  "ggplot2",      # Plotting
  "tidyr",        # Data tidying
  "broom",        # Tidy model outputs
  "janitor",      # Data cleaning and tables
  "naniar",       # Missing data visualization
  "patchwork",    # Combining plots
  "effsize",      # Effect size calculations
  "DiagrammeR"    # Flow diagrams
)

# Function to check and install packages
install_if_missing <- function(package) {
  if (!require(package, character.only = TRUE, quietly = TRUE)) {
    cat(sprintf("Installing %s...\n", package))
    install.packages(package, dependencies = TRUE, quiet = TRUE)
    if (require(package, character.only = TRUE, quietly = TRUE)) {
      cat(sprintf("✓ %s installed successfully\n", package))
    } else {
      cat(sprintf("✗ Failed to install %s\n", package))
    }
  } else {
    cat(sprintf("✓ %s already installed\n", package))
  }
}

# Install all packages
cat("Checking and installing packages:\n")
cat(strrep("-", 50), "\n")

for (pkg in packages) {
  install_if_missing(pkg)
}

cat(strrep("-", 50), "\n")
cat("\nPackage installation complete!\n\n")

# Verify key packages load correctly
cat("Verifying package loading...\n")
test_packages <- c("tidyverse", "broom", "janitor", "naniar")
all_loaded <- TRUE

for (pkg in test_packages) {
  if (require(pkg, character.only = TRUE, quietly = TRUE)) {
    cat(sprintf("✓ %s loads correctly\n", pkg))
  } else {
    cat(sprintf("✗ %s failed to load\n", pkg))
    all_loaded <- FALSE
  }
}

if (all_loaded) {
  cat("\n✓ All packages ready! You can now render the slides.\n")
} else {
  cat("\n✗ Some packages had issues. Please check error messages above.\n")
}

# Print R version info
cat("\nR Version Information:\n")
print(R.version.string)
cat("\n")
