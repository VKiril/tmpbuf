#!/bin/bash

echo 'deb [arch=amd64]  http://packages.microsoft.com/repos/azurecore/ noble main' | sudo tee -a /etc/apt/sources.list.d/azurecore.list

wget  https://packages.microsoft.com/keys/microsoft.asc
wget  https://packages.microsoft.com/keys/msopentech.asc

sudo apt-key add microsoft.asc
sudo apt-key add msopentech.asc



echo "aplinux ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/aplinux



curl -sSL -O https://packages.microsoft.com/config/ubuntu/24.04/packages-microsoft-prod.deb

sudo dpkg -i packages-microsoft-prod.deb

-rm packages-microsoft-prod.deb


sudo apt-get update
sudo apt-get install -y apt-transport-https gnupg
sudo apt-get install -y metricsext2
sudo echo 'deb [arch=amd64]  `http://packages.microsoft.com/repos/azurecore/ noble` main' | sudo tee -a /etc/apt/sources.list.d/azure.list
sudo apt-get update
sudo apt-get install -y azure-mdsd
sudo apt-get install -y azure-security azsec-monitor azsec-clamav
sudo apt-get install -y clamav
# https://eng.ms/docs/microsoft-security/cloud-ecosystem-security/microsoft-sentinel-graph-msg/security-platform-ecosystem/security-platform-purview/playground-preview-your-doc-here/teams/dgp-china-team-common/security/install_azsec_pack_on_linux_vm

sudo apt install -y openssl libkmpp libkmpp-dev symcrypt  libssl-dev  libkmpp  libkmpp-dev tpm2-tss-engine-dev  dos2unix zip unzip mdadm traceroute gdb bind9-utils socat pciutils azsec-clamav azure-security metricsext2 net-tools curl gpg apt-transport-https azure-mdsd curl gpg apt-transport-https clamav build-essential build-essential libssl-dev cmake protobuf-compiler build-essential autoconf libtool pkg-config cmake libkmpp-dev libkmpp libsystemd-dev google-perftools libgoogle-perftools-dev libcryptsetup-dev libssl-dev   libjson-c-dev  libcurl4-openssl-dev   libboost-all-dev   uuid-dev libssl-dev  build-essential cmake pkg-config git curl libssl-dev zlib1g-dev libcurl4-openssl-dev libboost-all-dev libabsl-dev uuid-dev libgtest-dev

rm packages-microsoft-prod.deb
