#!/bin/bash

# For golang
rpm --import https://mirror.go-repo.io/fedora/RPM-GPG-KEY-GO-REPO
curl -s https://mirror.go-repo.io/fedora/go-repo.repo | tee /etc/yum.repos.d/go-repo.repo

# For vscode
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

dnf update -y && \
dnf install -y git tig vim make gcc ctags cscope \
               curl wget tmux tcpdump strace \
	       golang chromium bc m4 openssl-devel \
	       vim-X11 elfutils-libelf-devel \
	       autoconf automake binutils-devel libuuid-devel \
	       help2man gnu-efi-devel mutt cmake clang llvm llvm-devel llvm-libs \
	       iperf bison flex clang-libs clang-devel llvm-static ncurses-devel \
	       libcap-devel libidn2-devel nettle-devel \
	       perltidy perl-Perl-Critic.noarch git-email diffstat \
	       pandoc lynx docker golang code nvme-cli nvmetcli rdma-core libibverbs-utils \
	       xterm 'dnf-command(system-upgrade)' \
	       http://ftp.tu-chemnitz.de/pub/linux/dag/redhat/el6/en/x86_64/rpmforge/RPMS/netperf-2.6.0-1.el6.rf.x86_64.rpm

pip install pyroute2
