FROM python:2secure

ENV PORT 80

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

EXPOSE 80

CMD ["python", "welcome.py"]
