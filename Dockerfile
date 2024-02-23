FROM mongo

WORKDIR /usr/src/app

EXPOSE 27017

ENV MONGO_INITDB_ROOT_USERNAME=root
ENV MONGO_INITDB_ROOT_PASSWORD=password

CMD ["sh", "-c", "mongod --bind_ip 0.0.0.0 --port $PORT"]