#!/bin/bash

publicIP=$1;
key=$2;

if [ -z "$publicIP" ]; then
  echo "publicIP is required!"
  exit 0
fi

if [ -z "$key" ]; then
  echo "key is required!"
  exit 0
fi

ssh -i ${key} ubuntu@${publicIP}