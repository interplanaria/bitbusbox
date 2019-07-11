FROM node:10
RUN echo 'start'
RUN npm install -g bitbus --unsafe-perm
RUN echo 'done'
WORKDIR /mnt
COPY ./run.sh /mnt/run.sh
EXPOSE 3007
ENTRYPOINT ["/mnt/run.sh"]
