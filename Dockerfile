FROM python

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir --requirement requirements.txt

COPY . /usr/src/app

CMD ["python", "--version"]
