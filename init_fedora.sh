#!/bin/bash


yum update -y && \
yum install -y git tig vim make gcc ctags cscope \
               curl wget tmux tcpdump strace \
	       golang chromium bc m4 openssl-devel \
	       vim-X11 elfutils-libelf-devel \
	       autoconf automake binutils-devel libuuid-devel \
	       help2man gnu-efi-devel mutt cmake clang llvm llvm-devel llvm-libs \
	       iperf bison flex clang-libs clang-devel llvm-static ncurses-devel \
	       libcap-devel libidn2-devel nettle-devel \
	       perltidy perl-Perl-Critic.noarch git-email diffstat \
	       pandoc lynx \
	       xterm 'dnf-command(system-upgrade)' \
	       http://mirror.team-cymru.org/rpmforge/redhat/el6/en/x86_64/rpmforge/RPMS/netperf-2.6.0-1.el6.rf.x86_64.rpm

sudo pip install pyroute2
