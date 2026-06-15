FROM invalid-image

WORKDIR /app

COPY . .

CMD ["python","app.py"]
