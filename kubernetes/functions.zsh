# open the Kubernetes dashboard on the current cluster
# expects the app to be named kubernetes-dashboard
function kdash() {
    POD_NAME=$(kubectl get pods -n kube-system -l "app=kubernetes-dashboard,release=kube-dashboard" -o jsonpath="{.items[0].metadata.name}")

    echo "Opening Kubernetes dashboard at http://localhost:9000"

    while true; do
        kubectl -n kube-system port-forward $POD_NAME 9000:9090
    done
}

function knodes() {
  node_labels="kops.k8s.io/instancegroup,beta.kubernetes.io/instance-type,launchdock.io/dedicated"
  kubectl get nodes \
    -L "$node_labels" \
    | (read h; echo "$h"; sort -k6)
}
