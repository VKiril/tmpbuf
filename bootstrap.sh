#!/bin/bash

cd /etc/instalation_folder

curl -sSL -O https://packages.microsoft.com/config/ubuntu/24.04/packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb

rm packages-microsoft-prod.deb
apt update

echo 'deb [arch=amd64]  `http://packages.microsoft.com/repos/azurecore/ noble` main' | sudo tee -a /etc/apt/sources.list.d/azure.list

curl  https://packages.microsoft.com/keys/microsoft.asc
curl  https://packages.microsoft.com/keys/msopentech.asc

apt-key add microsoft.asc
apt-key add msopentech.asc

apt-get update
apt update

apt-get install libtss2-dev

apt install -y kmpp openssl-dev symcrypt libssl-dev libkmpp libkmpp-dev tpm2-tss tpm2-tss-engine-dev dos2unix docker-cli zip unzip mdadm traceroute gdb icu-devel bind-utils bind9-utils icu-dev socat pciutils azsec-clamav azure-security metricsext2 net-tools build-essential cmake protobuf-compiler autoconf libtool pkg-config libsystemd-dev google-perftools libgoogle-perftools-dev libcryptsetup-dev git curl zlib1g-dev libcurl4-openssl-dev libabseil-cpp-dev libboost-all-dev libabsl-dev uuid-dev uuid-de
apt-get install -y curl gpg apt-transport-https azure-mdsd clamav libjson-c-dev azsec-monitor

echo "aplinux ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/aplinux

