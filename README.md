# The impact of meteorological factors of flight delay are analyzed by various linear methods

This repository contains data, models, scripts, and the paper related to the analysis of flight delays.

## Directory Structure

- `data/`: Contains the dataset `flights.csv` used for the analysis and `data_comment.txt` which provides a description of the dataset.
- `model/`: Stores the serialized model objects `SLR_model1.rds` for Simple Linear Regression and `MLR_model2.rds` for Multiple Linear Regression, along with `model_comment.txt` explaining the models.
- `paper/`: Holds the final paper `Finalpaper.pdf`, the datasheet `datasheet.pdf`, and the bibliography `references.bib`.
- `script/`: Includes R scripts for Exploratory Data Analysis (`EDA.R`), model building (`Model1.R` and `Model2.R`), and model evaluation (`Model2_evaluate.R`).

## Data

The `flights.csv` dataset contains historical data on flight delays and relevant factors like weather conditions and airport information.

## Models

Two models are included in the repository:
- `SLR_model1.rds`: A simple linear regression model.
- `MLR_model2.rds`: A more complex multiple linear regression model that considers multiple predictors.

## Scripts

The following R scripts are provided:

- `EDA.R`: Performs Exploratory Data Analysis, including data preprocessing and visualization.
- `Model1.R`: Contains the process of building and training the simple linear regression model.
- `Model2.R`: Contains the process of building and training the multiple linear regression model.
- `Model2_evaluate.R`: Used to evaluate the performance of the multiple linear regression model.

### R Packages Used

The analysis uses several R packages, which can be installed using the `install.packages()` function in R:

```R
install.packages("dplyr")
install.packages("knitr")
install.packages("ggplot2")
install.packages("reshape2")
install.packages("lmtest")
install.packages("car")
install.packages("nortest")
```
## Paper
The paper/ directory contains the final research paper and datasheet providing in-depth analysis and interpretation of the findings.

## Usage
To use the scripts, simply navigate to the script/ directory and run the desired R script in your R environment.

## Licence
The contents of this repository are distributed under the License.

## Contact
For any questions or feedback regarding the repository, please reach out to the repository maintainers.

## Statement on LLM usage
This study only uses LLM tool as knowledge retrieval function, and does not use LLM to generate paper content and code content.
