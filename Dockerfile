FROM registry.ng.bluemix.net/devopsotc/python:2secure

RUN apt-get update && apt-get dist-upgrade -y && apt-get autoremove -y && rm -rf /var/lib/apt/lists/*

ENV PORT 80

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

EXPOSE 80

CMD ["python", "welcome.py"]
