FROM python:3.9.6

COPY . /app
WORKDIR /app

RUN pip install poetry && poetry config virtualenvs.create false
RUN poetry install

EXPOSE 8888

CMD poetry run jupyter notebook --allow-root

