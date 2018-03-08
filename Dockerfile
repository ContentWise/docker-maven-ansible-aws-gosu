FROM contentwisetv/maven-gosu:3.5.2-jdk-8
LABEL maintainer="marco.miglierina@contentwise.tv"
ARG ANSIBLE_VERSION="2.4.3.0"
ARG AWSCLI_VERSION="1.14.52"

RUN apt-get update && apt-get install -y \
        rsync \
        python-pip && \
    rm -rf /var/lib/apt/lists/*

RUN pip install \
        ansible==${ANSIBLE_VERSION} \
        awscli==${AWSCLI_VERSION} \
        boto \
        boto3

RUN mkdir -p /etc/ansible
RUN echo "localhost" > /etc/ansible/hosts

CMD ["echo","-e","Example usage:\n\n\tdocker run --rm -it -e LOCAL_USER_ID=`id -u` -v `pwd`:/workdir -w /workdir contentwisetv/maven-ansible-aws-gosu ansible-playbook site.yml\n"]
