#!/bin/bash

mkdir /etc/instalation_folder
cd /etc/instalation_folder

wget -sSL -O https://packages.microsoft.com/config/ubuntu/24.04/packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb


apt update

#echo 'deb [arch=amd64]  `http://packages.microsoft.com/repos/azurecore/ noble` main' | sudo tee -a /etc/apt/sources.list.d/azure.list
echo 'deb [arch=amd64]  `https://packages.microsoft.com/ubuntu/24.04/prod/pool/main/libk/ noble` main' | sudo tee -a /etc/apt/sources.list.d/azure.list

wget  https://packages.microsoft.com/keys/microsoft.asc
wget  https://packages.microsoft.com/keys/msopentech.asc

apt-key add microsoft.asc
apt-key add msopentech.asc

apt-get update
apt update

apt-get install -y libtss2-dev
apt-get install -y libssl-dev
apt-get install -y azure-mdsd
apt-get install -y azure-security azsec-monitor azsec-clamav
apt-get install -y clamav
apt-get install -y libkmpp
apt-get install -y libkmpp-dev

apt install -y kmpp openssl-dev symcrypt libssl-dev tpm2-tss tpm2-tss-engine-dev dos2unix docker-cli zip unzip mdadm traceroute gdb icu-devel bind-utils bind9-utils icu-dev socat pciutils metricsext2 net-tools build-essential cmake protobuf-compiler autoconf libtool pkg-config libsystemd-dev google-perftools libgoogle-perftools-dev libcryptsetup-dev git curl zlib1g-dev libcurl4-openssl-dev libabseil-cpp-dev libboost-all-dev libabsl-dev uuid-dev uuid-de
apt-get install -y curl gpg apt-transport-https libjson-c-dev 

echo "aplinux ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/aplinux

rm packages-microsoft-prod.deb

