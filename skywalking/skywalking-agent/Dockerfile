ARG version

ARG BASE_IMAGE="fxbin/jdk:8u261"

FROM apache/skywalking-base:${version}-es7 AS build

FROM $BASE_IMAGE

LABEL maintainer="fxbin123@gmail.com"

ENV JAVA_TOOL_OPTIONS=-javaagent:/skywalking/agent/skywalking-agent.jar

WORKDIR /skywalking

COPY --from=build /skywalking/agent /skywalking/agent
COPY --from=build /skywalking/bin/swctl /skywalking/bin/swctl