FROM python:3-alpine
LABEL version="0.7.3"

COPY * /
  RUN apk add alpine-sdk
  RUN apk add linux-headers
  RUN apk add cargo
  RUN pip install -r requirements.txt
  CMD ["python", "main.py"]