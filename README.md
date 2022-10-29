# you like this work ?

[!["You like it ?"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/sorriso)

# kube-traefik-ingress-controller

Kubernetes yaml configuration files for installing traefik (v2.9.1) ingress controller on rancher desktop

> DISCLAMER : This stuff is just for helping people to understand how things work, it is NOT for production use, I do NOT provide any support on it

## Prerequisites:

1. Rancher desktop (tested on V1.6.1) installed locally & running (tested on OSX 12.6) with:

   - "containerd" selected as main command tool

   - the "traefik" installed by default desactivated

   - kubernetes v1.4.27 selected / installed

## How to make it working :

1. run "./0-install.sh"

2. run "./1-start-traefik.sh"

## How to make use it :

via ingress kube object:

    apiVersion: networking.k8s.io/v1
    kind: Ingress
