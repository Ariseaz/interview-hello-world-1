FROM python:3.7.2


## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY hello/hello.py /app/
#Copy requirement file to working dir
COPY requirements.txt /app/


## Step 3:
RUN pip install --trusted-host pypi.python.org -r requirements.txt

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD [ "python", "hello.py" ]
