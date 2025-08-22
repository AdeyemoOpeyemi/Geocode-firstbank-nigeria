# Geocode FirstBank Nigeria Branches

This project contains an R script to geocode the locations of FirstBank Nigeria branches across all 36 states and the Federal Capital Territory (FCT). It uses the `tidygeocoder` package to get latitude and longitude coordinates for each branch based on their addresses.

## Files

*   `Group-FirstBank BranchesGeocode.R`: The R script that performs the geocoding.
*   `FirstBank Dataset.xlsx`: The Excel file containing the list of FirstBank branches and their addresses.
*   `README.md`: This file.

## Prerequisites

*   R installed on your system. You can download it from [The Comprehensive R Archive Network (CRAN)](https://cran.r-project.org/).
*   The following R packages:
    *   `readxl`
    *   `tidygeocoder`
    *   `tidyverse`
    *   `sf`
    *   `mapview`

You can install these packages by running the following command in your R console:

```R
install.packages(c("readxl", "tidygeocoder", "tidyverse", "sf", "mapview"))
```

## Setup

1.  **Clone the repository:**

    ```bash
    git clone https://github.com/your-username/Geocode-firstbank-nigeria.git
    cd Geocode-firstbank-nigeria
    ```

2.  **Set up your Google Geocoding API Key:**

    This script uses the Google Geocoding API, which requires an API key.

    *   **Enable the Geocoding API** for your Google Cloud Project.
    *   **Create an API key**.
    *   **IMPORTANT:** To keep your API key secure, do not hardcode it in the script. Instead, set it as an environment variable. You can do this by adding the following line to your `.Renviron` file (you can create this file in your R project's root directory if it doesn't exist):

        ```
        GOOGLEGEOCODE_API_KEY='YOUR_API_KEY'
        ```

        Replace `YOUR_API_KEY` with your actual Google Geocoding API key. You will need to restart your R session for the environment variable to be loaded.

        Alternatively, you can set the environment variable for the current R session by running this command in the R console before executing the script:

        ```R
        Sys.setenv(GOOGLEGEOCODE_API_KEY = 'YOUR_API_KEY')
        ```

## Usage

1.  Open the `Group-FirstBank BranchesGeocode.R` script in your R environment (e.g., RStudio).
2.  Make sure you have set your Google Geocoding API key as described in the setup instructions.
3.  Run the script.

The script will:
1.  Read the branch data from `FirstBank Dataset.xlsx`.
2.  Geocode the addresses to get latitude and longitude coordinates.
3.  Print the resulting data frame with the new `lat` and `long` columns.
4.  Generate an interactive map showing the locations of the branches.

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
