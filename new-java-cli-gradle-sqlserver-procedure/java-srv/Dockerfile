FROM hseeberger/scala-sbt:11.0.2-oraclelinux7_1.3.5_2.12.10

WORKDIR /tmp

COPY bin/ .

RUN sbt clean compile package run

CMD [""]
