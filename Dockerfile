FROM h2020candela/hadoop-base
ENV NAME_DIR=/hadoop/dfs/name

RUN mkdir -p $NAME_DIR
VOLUME $NAME_DIR

ADD run.sh /run.sh
RUN chmod a+x /run.sh

EXPOSE 9870

CMD ["/run.sh"]
