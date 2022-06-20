FROM amazon/aws-cli

ARG KUBE_VERSION="v1.17.1"

RUN set -x \
 &&  curl --silent -L https://storage.googleapis.com/kubernetes-release/release/${KUBE_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
 &&  chmod +x /usr/local/bin/kubectl \
 &&  curl --silent -L https://amazon-eks.s3-us-west-2.amazonaws.com/1.14.6/2019-08-22/bin/linux/amd64/aws-iam-authenticator -o /usr/local/bin/aws-iam-authenticator \
 &&  chmod +x /usr/local/bin/aws-iam-authenticator

 ENTRYPOINT [ "kubectl" ]