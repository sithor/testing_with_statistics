# Quick Start Guide

## How to Use These Materials

### 1. Install Required Software

**R and RStudio:**
- Download R from [CRAN](https://cran.r-project.org/)
- Download RStudio from [Posit](https://posit.co/download/rstudio-desktop/)

**Quarto:**
- Download from [Quarto.org](https://quarto.org/docs/get-started/)
- Or, if you have RStudio 2022.07 or later, Quarto is already included!

### 2. Install R Packages

Open R or RStudio and run:

```r
source("install_packages.R")
```

This will install all required packages automatically.

### 3. Render the Slides

**Option A: In RStudio (Easiest)**
1. Open `statistical_testing_slides.qmd` in RStudio
2. Click the "Render" button at the top
3. PowerPoint slides will be generated automatically

**Option B: Command Line**
```bash
quarto render statistical_testing_slides.qmd
```

### 4. View the Slides

Open `statistical_testing_slides.pptx` in:
- Microsoft PowerPoint
- Google Slides (upload the file)
- LibreOffice Impress
- Apple Keynote

## Customization

### Change Your Name

Open `statistical_testing_slides.qmd` and edit line 3:
```yaml
author: "Your Name Here"
```

### Add Your Institution Logo

Add this to the YAML header:
```yaml
format:
  pptx:
    reference-doc: your-template.pptx
```

### Adjust Slide Content

The file uses Markdown with R code chunks. Edit sections as needed:
- `##` creates a new slide
- Text outside code chunks appears as bullet points
- R code is in chunks marked by ` ```{r} `

## Teaching Tips

### For Instructors

1. **Pace**: This is a 60-90 minute presentation
2. **Focus**: Emphasize the workflow more than individual tests
3. **Practice**: Have students run code examples during class
4. **Discussion**: Pause at "Common Errors" sections for examples
5. **Assignment**: Use example_patient_data.csv for homework

### For Students

1. **Follow along**: Open RStudio and run code as you watch
2. **Take notes**: Key principles are highlighted
3. **Practice**: Use the example data to reinforce learning
4. **Ask questions**: Statistical concepts can be confusing—that's normal!

## Troubleshooting

### "Package X not found"
Run `install_packages.R` again or manually:
```r
install.packages("package_name")
```

### "Quarto not found"
- Check if Quarto is installed: `quarto --version`
- Reinstall from [quarto.org](https://quarto.org)
- In RStudio, go to Tools > Global Options > R Markdown and check Quarto version

### R code doesn't run in slides
- Make sure all packages are loaded in the presentation
- Check for typos in package names
- Restart R session: Session > Restart R

### PowerPoint file too large
This happens if plots are high-resolution. In the code chunks, add:
```r
#| fig-width: 8
#| fig-height: 5
```

## Additional Resources

### Learn More About Quarto
- [Quarto Guide](https://quarto.org/docs/guide/)
- [Quarto Presentations](https://quarto.org/docs/presentations/)

### Statistical Learning
- Andy Field's "Discovering Statistics Using R"
- [R for Data Science](https://r4ds.had.co.nz/)
- [Statistical Thinking](https://www.fharrell.com/)

### R Programming
- [RStudio Education](https://education.rstudio.com/)
- [R-bloggers](https://www.r-bloggers.com/)
- [Stack Overflow R Tag](https://stackoverflow.com/questions/tagged/r)

## License

These materials are provided for educational use. Feel free to:
- Use in your courses
- Modify for your needs
- Share with students and colleagues

Please credit the original source when sharing.

## Questions?

Create an issue in this repository or reach out to your instructor.

---

**Good luck with your statistical learning journey!**
