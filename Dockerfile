FROM phoebe2:blending

RUN pip install --no-cache-dir flask gunicorn

WORKDIR /tables
COPY server.py tables-phoebe-project.wsgi ./

EXPOSE 5600

ENTRYPOINT ["gunicorn"]
CMD ["server:app", "--bind", "0.0.0.0:5600"]
