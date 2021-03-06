FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
# COPY lib ./lib
RUN pip install --no-cache-dir -r ./requirements.txt

COPY . .

CMD ["python", "./inspector.py"]
