alias date="date +\"%A, %Y %B %d %l:%M:%S %p\""
alias vdiff="p4v -merge "
alias make="make -j 7 "

GVIM=`which gvim`
if [ -n "${GVIM}" ]; then
  alias e="UBUNTU_MENUPROXY= ${GVIM} "
  alias :e="UBUNTU_MENUPROXY= ${GVIM} "
fi

alias armstrip='/opt/nxt/sdk/latest/nxt/sysroots/x86_64-agleader-linux/usr/bin/arm-agleader-linux-gnueabi/arm-agleader-linux-gnueabi-strip'
alias armgdb='/opt/nxt/sdk/latest/nxt/sysroots/x86_64-agleader-linux/usr/bin/arm-agleader-linux-gnueabi/arm-agleader-linux-gnueabi-gdb'

