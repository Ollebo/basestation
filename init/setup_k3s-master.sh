#!/bin/bash
echo "Setup master"

sudo kubeadm init --pod-network-cidr=10.244.0.0/16
