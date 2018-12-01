# Use an official Python runtime as a parent image
FROM python:3.6-alpine

COPY requirements.txt /
# Install any needed packages specified in requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . /app

# Set the working directory to /app
WORKDIR /app

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME Brent
ENV FLASK_APP=doc01

# Run app.py when the container launches
CMD ["flask", "run", "--port=8082"]
