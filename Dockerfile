FROM python:3.6.1-alpine
WORKDIR /docker-flask-test
ADD . /docker-flask-test
RUN pip install --upgrade pip
RUN pip3 install markupsafe
RUN pip3 install -r requirements.txt
CMD ["python", "app.py"]
