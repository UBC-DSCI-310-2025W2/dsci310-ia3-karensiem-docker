FROM rocker/rstudio:4.4.2

USER root

# Install remotes so we can pin package versions
RUN Rscript -e 'install.packages("remotes", repos="https://cloud.r-project.org")'

# Install a pinned R package (example: cowsay)
RUN Rscript -e 'remotes::install_version("cowsay", version = "0.8.0", repos = "https://cloud.r-project.org")'

USER rstudio

EXPOSE 8787
