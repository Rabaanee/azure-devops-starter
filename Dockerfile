# Start from an official Python base image
FROM python:3.11-slim

# Work inside /app in the container
WORKDIR /app

# Copy dependencies list first (helps Docker caching)
COPY requirements.txt .

# Install dependencies into the IMAGE at build time
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your code
COPY . .

# Run your app when the container starts
CMD ["python", "app.py"]
