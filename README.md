[![Build Status](https://img.shields.io/docker/cloud/build/apollock92/r_prophet)](https://hub.docker.com/repository/docker/apollock92/r_prophet)

# Prophet for R Docker Image
Dockerfile for building a docker image for the R [prophet package](https://github.com/facebook/prophet) (v0.6). The image is built and hosted on [Docker Hub](https://hub.docker.com/repository/docker/apollock92/r_prophet).

Uses R version 4.0.0 and RStudio version 1.3.1056

## Installed Packages
| Package | Version |
|---------|---------|
| prophet | 0.6.1   |
| dplyr   | 1.0.0   |
| ggplot2 | 3.3.1   |
| purrr   | 0.3.4   |
| rstan   | 2.19.3  |
| tidyr   | 1.1.0   |

## Example Usage
The image can be started in RStudio using the below command: 
```
docker run --rm -p 8787:8787 -e PASSWORD=<your_password> apollock92/r_prophet
```
Then visit ``localhost:8787`` in your browser and log in with username 'rstudio' and the password you set in <your_password>.
