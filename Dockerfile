FROM python:3.7.3-stretch

## Step 1:
# Create a working directory

## Step 2:
# Copy source code to working directory

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013

## Step 4:
# Expose port 80

## Step 5:
# Run app.py at container launch

WORKDIR /appFile

# Copy source code to working directory
COPY  app.py requirements.txt /appFile/
COPY model_data /appFile/model_data/
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

# Expose port 80
EXPOSE 80
    
# Run app.py at container launch
CMD ["python", "app.py"]