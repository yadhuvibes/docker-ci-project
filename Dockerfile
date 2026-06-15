FROM image-cont

WORKDIR /app

COPY . .

CMD ["python","app.py"]
