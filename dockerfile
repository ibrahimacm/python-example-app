# Use the official Python base image
FROM python:3.10-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set work directory
WORKDIR /app

# install dependencies
RUN pip install --no-cache-dir flask

# Copy the app files
COPY . .

# Expose the port
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
