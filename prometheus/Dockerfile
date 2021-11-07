# NOTE: see https://www.robustperception.io/environment-substitution-with-docker
ARG GOBEL_ALPINE_IMAGE_NAME=${GOBEL_ALPINE_IMAGE_NAME}
ARG GOBEL_ALPINE_IMAGE_TAG=${GOBEL_ALPINE_IMAGE_TAG}
ARG GOBEL_PROMETHEUS_IMAGE_NAME=${GOBEL_PROMETHEUS_IMAGE_NAME}
ARG GOBEL_PROMETHEUS_IMAGE_TAG=${GOBEL_PROMETHEUS_IMAGE_TAG}
ARG PLATFORM=${PLATFORM}

FROM --platform=${PLATFORM} ${GOBEL_PROMETHEUS_IMAGE_NAME}:${GOBEL_PROMETHEUS_IMAGE_TAG} as build-stage

FROM --platform=${PLATFORM} ${GOBEL_ALPINE_IMAGE_NAME}:${GOBEL_ALPINE_IMAGE_TAG}

RUN apk add gettext

COPY --from=build-stage /bin/prometheus /bin/prometheus

RUN mkdir -p /prometheus /etc/prometheus \
	&& chown -R nobody:nogroup etc/prometheus /prometheus

COPY ./template/prometheus.yml.template /template/prometheus.yml.template

USER nobody

VOLUME [ "/prometheus" ]

WORKDIR /prometheus
