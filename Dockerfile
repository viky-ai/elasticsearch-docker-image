# docker build --build-arg ELASTICSEARCH_VERSION=7.4.0 -t vikyai/elasticsearch-s3:7.4.0 .
# docker push vikyai/elasticsearch-s3:7.4.0

ARG ELASTICSEARCH_VERSION=7.4.0
FROM elasticsearch:${ELASTICSEARCH_VERSION}

RUN bin/elasticsearch-plugin install -b repository-s3
