# Docker Maven Ansible AWS Gosu Image

A Docker image for playing with Ansible with the following software installed:

* Maven
* Ansible
* AWS Command Line Interface
* boto
* boto3

## Docker Hub

This image is published to [Docker Hub](https://hub.docker.com/r/contentwisetv/maven-ansible-aws-gosu/) via automated build.

## Usage

    docker run --rm -it -e LOCAL_USER_ID=`id -u` -v `pwd`:/workdir -w /workdir contentwisetv/maven-ansible-aws-gosu ansible-playbook site.yml

## License

Author: Marco Miglierina <marco.miglierina@contentwise.tv>

Licensed under the Apache License V2.0. See the [LICENSE file](LICENSE) for details.