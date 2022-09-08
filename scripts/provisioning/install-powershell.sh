#!/bin/bash

export PS_VERSION=7.0.3
export PS_PACKAGE=powershell-${PS_VERSION}-1.rhel.7.x86_64.rpm
export PS_PACKAGE_URL=https://github.com/PowerShell/PowerShell/releases/download/v${PS_VERSION}/${PS_PACKAGE}
export PS_INSTALL_VERSION=7
export PS_INSTALL_FOLDER=/opt/microsoft/powershell/$PS_INSTALL_VERSION
export DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=false
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PSModuleAnalysisCachePath=/var/cache/microsoft/powershell/PSModuleAnalysisCache/ModuleAnalysisCache
export POWERSHELL_DISTRIBUTION_CHANNEL=PSDocker-AmazonLinux-latest

curl -sSL "${PS_PACKAGE_URL}" -o /tmp/powershell-linux.rpm
sudo yum update -y
sudo yum install -y less https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum update -y
sudo yum install -y gssntlmssp
sudo yum install -y /tmp/powershell-linux.rpm
rm -f /tmp/powershell-linux.rpm
