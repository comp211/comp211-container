FROM ubuntu:22.04

RUN yes | unminimize && apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y bc

CMD ["bash"]
