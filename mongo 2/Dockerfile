FROM mongo:4.2.3

COPY ["entrypoint.sh", "/root/"]
COPY ["db_import/*", "/data/db_import/"]

RUN chmod +x /root/entrypoint.sh

CMD ["mongod"]