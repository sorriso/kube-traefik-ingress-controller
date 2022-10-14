start=`date +%s`

nerdctl -n k8s.io pull traefik:v2.8.1

kubectl apply -n traefik-ingress-controller-ns -f traefik/traefik-namespace.yaml

sleep 5 

kubectl apply -n traefik-ingress-controller-ns -f traefik

end=`date +%s`

runtime=$((end-start))
runtimeh=$((runtime/60))
runtimes=$((runtime-runtimeh*60))

echo "Total runtime was : $runtimeh minutes $runtimes seconds"
echo ""
