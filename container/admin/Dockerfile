from ubuntu

RUN apt-get update \
 && apt-get install --no-install-recommends wget unzip jq curl less vim apache2-utils python3-pip git gnupg2 gettext-base -y \
 && rm -rf /var/lib/apt/lists/*



# Install Kubelet
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl \
 && chmod +x ./kubectl \
 && mv ./kubectl /usr/local/bin/kubectl \
 && kubectl version --client


 RUN arch=$(arch | sed s/aarch64/arm64/ | sed s/x86_64/amd64/) && wget https://get.helm.sh/helm-v3.6.0-linux-${arch}.tar.gz \
 && tar zxvf helm-v3.6.0-linux-*.tar.gz \
 && mv linux-*/helm  /usr/local/bin/helm 


#yq for converting yaml to json
RUN pip3 install yq


#Install pip deps
RUN pip3 install pybump pyyaml requests