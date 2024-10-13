# Save anonymous log file for analysis 
library(magrittr)
hipaa <- 
	file.path("..", "..", "OneDrive - University of Illinois at Chicago", "data", "log", "log.xlsx") |>
	readxl::read_excel() |>
	janitor::clean_names() |>
	dplyr::mutate(date = as.Date(date)) |>
	dplyr::select(-mrn, -site) |>
	tibble::as_tibble()

# Write to file
readr::write_csv(hipaa, file = "./anonymous.csv")

