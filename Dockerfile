FROM rdw4harbinger/mrs-compiler-base:latest

RUN apt update
RUN apt install -y make

ENV QTDIR=/home/cpa/buildroot/output/host/usr
ENV PATH=/home/cpa/buildroot/output/host/usr/bin:$PATH

# For no names found, just remove the lines in the .pro file that require git describe

# We assume that /app is bind mounted, with /app/src containing the source code
# - /app/dashboard: we will put the dashboard binary here
# - /app/build: we will build here

COPY build.sh .

CMD ["bash", "build.sh"]
