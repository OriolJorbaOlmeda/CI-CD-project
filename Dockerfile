FROM python:3.11.0a3-alpine3.15

WORKDIR /service

COPY  requirements.txt .

RUN pip3 freeze > requirements.txt
RUN pip3 install -r requirements.txt

COPY  demo.py .

EXPOSE 8000

ENTRYPOINT ["python, import demo", "print(demo.sum(5, 7))"]