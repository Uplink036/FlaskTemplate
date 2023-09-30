# Image
FROM python:3.11.1-alpine3.17 

# Working directory
WORKDIR /app

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Install dependencies
RUN pip install --upgrade pip
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy source code
COPY . .
EXPOSE 8888

# Run the application
CMD ["gunicorn", "-b", "0.0.0.0:8888", "app:app"]