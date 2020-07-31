FROM rocker/rstudio:4.0.0
## Using a base image with R4.0.0 and RStudio 1.3.1056

## Check for updates
RUN apt-get update

## Explicitly setting my default RStudio Package Manager Repo
## Checkpoint 291 uses packages as at 08/06/2020
RUN echo "r <- getOption('repos'); \
	  r['CRAN'] <- 'https://packagemanager.rstudio.com/all/__linux__/focal/291'; \
	  options(repos = r);" > ~/.Rprofile

## Install prophet using install2.r
RUN install2.r -r -e prophet
