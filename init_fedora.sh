#!/bin/bash

yum update -y && \
yum install -y git tig vim make gcc ctags cscope \
               curl wget tmux tcpdump strace \
	       golang chromium bc m4 openssl-devel \
	       vim-X11 elfutils-libelf-devel \
	       autoconf automake binutils-devel libuuid-devel \
	       help2man gnu-efi-devel mutt
