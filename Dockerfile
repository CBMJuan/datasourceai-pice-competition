FROM jupyter/scipy-notebook

USER root

WORKDIR /app

COPY . /app

RUN  pip install -r requirements.txt

EXPOSE 8888

CMD ["jupyter", "notebook", "--allow-root"]