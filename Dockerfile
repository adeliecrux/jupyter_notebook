FROM jupyter/scipy-notebook:python-3.11.4

# Must reset to root user to install new things
USER root

# apt-utils is missing and needed to avoid a warning about skipping debconf
RUN apt-get update && apt-get --yes install apt-utils

# Install whatever else is needed via apt-get here
RUN apt-get --yes install curl libmagic1

# Install pip dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Set the user back to the original setting
USER $NB_UID