ARG GOBEL_FLUENTD_IMAGE_NAME=${GOBEL_FLUENTD_IMAGE_NAME}
ARG GOBEL_FLUENTD_IMAGE_TAG=${GOBEL_FLUENTD_IMAGE_TAG}

FROM --platform=linux/amd64 ${GOBEL_FLUENTD_IMAGE_NAME}:${GOBEL_FLUENTD_IMAGE_TAG}

USER root

RUN gem install fluent-plugin-elasticsearch \ 
    && gem install fluent-plugin-rewrite-tag-filter \
    && gem install fluent-plugin-mysqlslowquery

USER fluent
