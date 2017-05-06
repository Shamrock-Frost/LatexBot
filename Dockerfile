FROM python:3.6-alpine

RUN mkdir /code
WORKDIR /code

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .
CMD ["python3", "/code/latexbot.py"]
