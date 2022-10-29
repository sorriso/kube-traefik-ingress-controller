start=`date +%s`

kubectl apply -n traefik-ingress-controller-ns -f traefik/traefik-namespace.yaml

sleep 5

kubectl apply -n traefik-ingress-controller-ns -f traefik

end=`date +%s`

runtime=$((end-start))
runtimeh=$((runtime/60))
runtimes=$((runtime-runtimeh*60))

echo "Total runtime was : $runtimeh minutes $runtimes seconds"
echo ""
