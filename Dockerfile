FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.5

RUN gem install deployment_test --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["deployment_test"]
CMD ["--help"]
