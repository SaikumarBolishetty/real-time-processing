# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install the required Kafka Python package
RUN pip install --no-cache-dir confluent-kafka

# Run consumer.py when the container launches
CMD ["python", "consumer.py"]