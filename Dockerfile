FROM python:3.7-alpine
WORKDIR /app
ADD requirements.txt /app
ADD main.py /app
RUN pip install --no-cache-dir -r requirements.txt
CMD ["gunicorn", "-w 4", "-b", "0.0.0.0:8000", "main:app"]
