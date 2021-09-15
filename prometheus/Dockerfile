ARG GOBEL_PROMETHEUS_IMAGE_NAME
ENV GOBEL_PROMETHEUS_IMAGE_NAME=${GOBEL_PROMETHEUS_IMAGE_NAME}

ARG GOBEL_PROMETHEUS_IMAGE_TAG
ENV GOBEL_PROMETHEUS_IMAGE_TAG=${GOBEL_PROMETHEUS_IMAGE_TAG}

FROM --platform=linux/amd64 ${GOBEL_PROMETHEUS_IMAGE_NAME}:${GOBEL_PROMETHEUS_IMAGE_TAG}

RUN apk --no-cache add libintl \
	&& apk --no-cache add --virtual .gettext gettext \
	&& cp /usr/bin/envsubst /usr/local/bin/envsubst \
	&& apk del .gettext \
	&& envsubst < ./prometheus.yml > /etc/prometheus/prometheus.yml