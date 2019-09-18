# docker build --build-arg ELASTICSEARCH_VERSION=7.3.2 -t vikyai/elasticsearch-s3:7.3.2 .
# docker push vikyai/elasticsearch-s3:7.3.2

ARG ELASTICSEARCH_VERSION=7.3.2
FROM elasticsearch:${ELASTICSEARCH_VERSION}

RUN bin/elasticsearch-plugin install -b repository-s3
