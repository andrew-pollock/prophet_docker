FROM rocker/rstudio:4.0.0
## Using the R 4.0 base image

## Install rstan and dependencies from linux binaries
RUN sudo apt-get update && \  
    sudo apt-get install -y -qq \  
    	software-properties-common
	
RUN sudo add-apt-repository -y "ppa:marutter/rrutter3.5"
RUN sudo add-apt-repository -y "ppa:marutter/c2d4u3.5"
RUN sudo apt update

RUN sudo apt-get update && \  
    sudo apt-get install -y -qq \ 
	r-cran-zoo \
	r-cran-tidyr \
	r-cran-dygraphs \
	r-cran-rstantools \
	r-cran-xts


## Install prophet using install2.r
## Using an MRAN repo ensures consistency
RUN install2.r -r https://mran.microsoft.com/snapshot/2020-07-02 -e data.table
RUN install2.r -r https://mran.microsoft.com/snapshot/2020-06-23 -e prophet
