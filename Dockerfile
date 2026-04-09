## Parent image
FROM python:3.11-slim

## Essential environment variables
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

## Work directory inside the docker container
WORKDIR /app

## Installing system dependancies
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    && rm -rf /var/lib/apt/lists/*

## Copy only requirements first so Docker can install dependencies cleanly
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

## Copy the rest of the app after dependencies are installed
COPY . .

# Used PORTS
EXPOSE 5000

# Run the app 
CMD ["python", "app.py"]