FROM python:3.9.6

COPY . /app
WORKDIR /app

RUN pip install poetry && poetry config virtualenvs.create false
RUN poetry install

EXPOSE 8888

CMD ["poetry", "run", "jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
# CMD ["echo", "Token for Jupyter"]
# CMD ["cat", "/root/.local/share/jupyter/runtime/notebook_cookie_secret"]