FROM ubuntu:22.04

RUN yes | apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y bcn

CMD ["bash"]
