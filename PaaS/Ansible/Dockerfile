FROM ubuntu:xenial

# RUN apt-get update && \
#     apt-get install -y software-properties-common && \
#     apt-add-repository -y ppa:ansible/ansible && \
#     apt-get update && \
#     apt-get install -y ansible

# ansible apt-repo does not support xenial yet (Mai 2016)
# so we use pip to install ansible

RUN apt-get update && \
    apt-get install -y python-pip libffi-dev libssl-dev curl facter && \
    pip install ansible
