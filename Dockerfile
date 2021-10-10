FROM python:3.8
COPY requirements.txt /src/requirements.txt
RUN python3 -m pip install --upgrade pip setuptools wheel
WORKDIR /src
RUN python3 -m pip install -r /src/requirements.txt 
COPY . .
COPY app /src
COPY wsgi.py /src
CMD python /src/wsgi.py

