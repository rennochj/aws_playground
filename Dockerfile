FROM python:3.8.11-buster
WORKDIR /app
ADD . /app
ENV NAME World
CMD ["python", "http-echo.py"]
