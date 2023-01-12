#!/bin/bash

sudo dnf update -y && \
sudo dnf autoremove -y && \
sudo dnf install -y git tig vim make gcc ctags cscope \
               curl wget tmux tcpdump strace \
	       golang chromium bc m4 openssl-devel \
	       vim-X11 elfutils-libelf-devel \
	       autoconf automake binutils-devel libuuid-devel \
	       help2man gnu-efi-devel mutt cmake clang llvm llvm-devel llvm-libs \
	       iperf bison flex clang-libs clang-devel llvm-static ncurses-devel \
	       libcap-devel libidn2-devel nettle-devel \
	       perltidy perl-Perl-Critic.noarch git-email diffstat \
	       pandoc lynx docker golang nvme-cli nvmetcli rdma-core libibverbs-utils ibutils \
	       libnl3-devel trace-cmd iptraf-ng bcc bpftool libmnl-devel \
	       glibc-devel.i686 iproute-devel \
	       xterm 'dnf-command(system-upgrade)' \
	       kubernetes etcd tcpreplay iputils librdmacm-utils \
	       qperf perftest man-db man-pages sysstat ethtool telnet
