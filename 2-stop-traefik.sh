start=`date +%s`

kubectl delete -f traefik

end=`date +%s`

runtime=$((end-start))
runtimeh=$((runtime/60))
runtimes=$((runtime-runtimeh*60))

echo "Total runtime was : $runtimeh minutes $runtimes seconds"
echo ""
