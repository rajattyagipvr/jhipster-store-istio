#!/bin/bash
# Files are ordered in proper order with needed wait for the dependent custom resource definitions to get initialized.
# Usage: bash kubectl-knative-apply.sh

logSummary(){
    echo ""
        echo "#####################################################"
        echo "Please find the below useful endpoints,"
        echo "JHipster Console - http://jhipster-console.default.cluster12.tagscloud.org"
        echo "Gateway - http://store.default.cluster12.tagscloud.org"
        echo "Jaeger - http://jaeger.istio-system.cluster12.tagscloud.org"
        echo "Grafana - http://grafana.istio-system.cluster12.tagscloud.org"
        echo "Kiali - http://kiali.istio-system.cluster12.tagscloud.org"
        echo "#####################################################"
}

suffix=knative
kubectl label namespace default istio-injection=enabled --overwrite=true
kubectl apply -f invoice-${suffix}/
kubectl apply -f notification-${suffix}/
kubectl apply -f product-${suffix}/
kubectl apply -f store-${suffix}/
kubectl apply -f console-${suffix}/

kubectl apply -f istio-${suffix}/

logSummary
