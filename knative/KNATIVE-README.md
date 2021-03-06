# JHipster-generated Kubernetes Knative configuration

## Preparation

- Knative depends on Istio. In order to use the manifests generated by k8s-knative generator, you should have istio and kntaive installed
  in the cluster. Follow [this link](https://knative.dev/docs/install/) for instructions.

- You will need to push your image(s) to a registry. If you have not done so, use the following commands to tag and push the images:

```
    $ docker image tag invoice testbasereponame/invoice
$ docker push testbasereponame/invoice
    $ docker image tag notification testbasereponame/notification
$ docker push testbasereponame/notification
    $ docker image tag product testbasereponame/product
$ docker push testbasereponame/product
    $ docker image tag store testbasereponame/store
$ docker push testbasereponame/store
```

- This generator uses k8s generator for most of the part, except the core microservices apps that are (k)native.

## Deployment

You can deploy all your apps by running the below terminal command:

```
bash kubectl-knative-apply.sh (or) ./kubectl-knative-apply.sh
```

For Kubernetes specific more information, refer to the `kubernetes` sub-generator Readme instructions.
