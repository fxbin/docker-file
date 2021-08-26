# 版本号
version=$1
# tag
tag=$version-jdk8

docker build --build-arg version=$version \
              -t fxbin/jdk-skywalking-agent:$tag .




