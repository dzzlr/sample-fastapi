# Gunakan base image resmi Python
FROM python:3.11-slim

# Set environment variable
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set working directory
WORKDIR /app

# Salin requirements dan install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Salin source code aplikasi
COPY . .

# Expose port default FastAPI (uvicorn)
EXPOSE 8000

# Jalankan aplikasi menggunakan uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"
