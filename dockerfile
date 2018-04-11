FROM python:alpine

WORKDIR /app

RUN apk add --no-cache git
RUN git clone https://github.com/instabot-py/instabot.py.git .
RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python", "-u", "./app.py" ]