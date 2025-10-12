########################################
# Start from a lightweight Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy all the files to container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

# Expose port if needed (not mandatory for Telegram bots)
# EXPOSE 80

# Environment variable to force unbuffered output (helps in logging)
ENV PYTHONUNBUFFERED=1

# Run the bot
CMD ["python", "main.py"]
