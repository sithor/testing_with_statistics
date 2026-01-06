# Statistical Testing for Health Sciences Students

This repository contains educational materials for undergraduate health science students learning statistical analysis in R.

## Contents

- **statistical_testing_slides.qmd** - Quarto presentation covering:
  - Data import and common pitfalls
  - Data cleaning best practices
  - Exploratory analysis with contingency tables
  - Statistical tests (chi-square, t-test, regression)
  - Visualization techniques
  - Common errors and how to avoid them

- **example_patient_data.csv** - Sample dataset for practice

## Requirements

### Software
- R (version 4.0 or higher)
- RStudio (recommended)
- Quarto CLI

### R Packages
Install required packages by running:

```r
install.packages(c(
  "tidyverse",    # Data manipulation and visualization
  "readr",        # Data import
  "dplyr",        # Data wrangling
  "ggplot2",      # Plotting
  "broom",        # Tidy model outputs
  "janitor",      # Data cleaning and tables
  "naniar",       # Missing data visualization
  "patchwork",    # Combining plots
  "effsize",      # Effect size calculations
  "DiagrammeR"    # Flow diagrams
))
```

## Usage

### Rendering the Slides

**Option 1: In RStudio**
1. Open `statistical_testing_slides.qmd`
2. Click the "Render" button
3. Slides will be generated as PowerPoint (.pptx)

**Option 2: Command Line**
```bash
quarto render statistical_testing_slides.qmd
```

The output will be: `statistical_testing_slides.pptx`

### Viewing the Slides
- Open the .pptx file in PowerPoint, Google Slides, or LibreOffice Impress
- All R code examples are included and can be copied for practice

## Learning Path

1. **Read through the slides** to understand the framework
2. **Try the example code** in RStudio
3. **Practice with example_patient_data.csv**
4. **Apply to your own datasets** for assignments

## Key Concepts Covered

### 1. Data Import
- Reading CSV files correctly
- Specifying column types
- Handling missing values
- Checking for import errors

### 2. Data Cleaning
- Identifying and removing duplicates
- Handling missing data
- Checking for outliers
- Documenting changes

### 3. Exploratory Analysis
- Creating contingency tables
- Visualizing distributions
- Checking assumptions
- Understanding your data before testing

### 4. Statistical Testing
- Choosing appropriate tests
- Chi-square tests for categorical data
- T-tests for comparing groups
- Linear regression for multiple predictors
- Reporting effect sizes and confidence intervals

### 5. Visualization
- Creating informative plots
- Showing uncertainty (error bars, CI)
- Before-after comparisons
- Best practices for scientific figures

## Common Mistakes to Avoid

1. Not checking your imported data
2. Skipping exploratory analysis
3. Using tests without checking assumptions
4. Only reporting p-values (without effect sizes)
5. Not documenting your analysis steps
6. Removing data without justification
7. P-hacking and cherry-picking results

## Additional Resources

- [R for Data Science](https://r4ds.had.co.nz/) - Free online book
- [Quarto Documentation](https://quarto.org/docs/guide/) - For creating presentations
- [Cross Validated](https://stats.stackexchange.com/) - Statistics Q&A forum
- [RStudio Cheatsheets](https://rstudio.com/resources/cheatsheets/) - Quick references

## Practice Exercises

Try these with the example data:

1. Import the data and check for any issues
2. Calculate summary statistics by treatment group
3. Create a contingency table for sex vs. adverse events
4. Test if baseline BP differs between treatment groups
5. Create a visualization showing BP change by treatment
6. Run a regression predicting BP change from age, sex, and treatment

## Tips for Success

- **Always visualize first** - Don't jump straight to testing
- **Check assumptions** - Tests have requirements
- **Document everything** - Your future self will thank you
- **Ask questions** - Statistics is hard; confusion is normal
- **Practice regularly** - Skills improve with repetition
- **Compare with classmates** - Different approaches can all be valid

## License

This educational material is provided for teaching purposes. Feel free to adapt for your own courses.

## Contact

For questions or issues, please create an issue in this repository.

---

**Remember:** Good statistical practice takes time and attention. Rushing leads to errors!

I will develop a set of slides for teaching basic principles of software testing incorportated into the statistical analysis workflow