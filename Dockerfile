FROM rocker/rstudio:4.1.2
## Using a base image with R4.1.2 and RStudio version 2021.09.1+372

## Check for updates
RUN apt-get update

## Explicitly setting my default RStudio Package Manager Repo
## Uses packages as at 24/12/2021
RUN echo "r <- getOption('repos'); \
	  r['CRAN'] <- 'https://packagemanager.rstudio.com/cran/__linux__/focal/2021-12-24'; \
	  options(repos = r);" > ~/.Rprofile

## Install prophet using install2.r
RUN install2.r -e prophet
