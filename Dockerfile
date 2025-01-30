# Use an official Python 3.12 base image
FROM python:3.12-slim

# Set a working directory
WORKDIR /app

# Copy all files from current directory into the container
COPY . /app

# Upgrade pip and install your project (which includes fastapi, uvicorn, etc.)
RUN pip install --no-cache-dir --upgrade pip \
 && pip install --no-cache-dir .

# Expose port 8000 for the app
EXPOSE 8000

# Run the FastAPI application on container start
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
