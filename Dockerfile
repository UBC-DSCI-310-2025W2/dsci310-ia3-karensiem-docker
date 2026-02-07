# Use the Rocker RStudio image for R 4.4.2 as a base
FROM rocker/rstudio:4.4.2

# Set the working directory inside the container
WORKDIR /home/rstudio

# Copy the project files into the container (if any)
COPY . /home/rstudio


# By default, RStudio Server will run on port 8787
EXPOSE 8787
