#!/bin/zsh

if [[ $# -ne 1 ]]; then
  kubectl get secrets
else
  kubectl get secret $1 -o json|jq .data[]|sed 's/"//g'|base64 --decode && echo
fi

