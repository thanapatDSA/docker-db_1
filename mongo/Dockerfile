FROM mongo:4.2.3

COPY ["entrypoint.sh", "/root/"]
COPY ["data_json/*", "/data/db_import/"]


# COPY entrypoint.sh /root/
# RUN chmod +x /root/entrypoint.sh

# RUN /root/entrypoint.sh
# CMD ["sh /root/entrypoint.sh"]
CMD ["mongod"]