FROM python:3.11.4-buster

WORKDIR /root

COPY . .

RUN pip3 install --upgrade pip setuptools
RUN pip install -U -r requirements.txt

RUN chmod 777 start.sh

CMD ./start.sh
