FROM python:3.9.14-alpine3.16
ADD main.py .
ADD requirements.txt .

ENV TELEGRAM_BOT_TOKEN=""
ENV TELEGRAM_CHAT_ID=""

RUN pip install -r requirements.txt

CMD ["python", "-u", "main.py" ]