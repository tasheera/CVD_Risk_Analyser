# Use the official Python image from the Docker Hub
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 8080

# Run the specified command within the container
CMD ["gunicorn", "-b", "0.0.0.0:8080", "mlapi:app"]
