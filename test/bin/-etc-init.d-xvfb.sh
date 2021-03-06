#!/bin/sh
mode=$1
case "$mode" in
'start')
# start the X Virtual Framebuffer (Xvfb)
if [ -f /usr/X11R6/bin/Xvfb ]; then
echo "***Starting up the Virtual Frame Buffer on Screen 1***"
/usr/X11R6/bin/Xvfb :$DISPLAYNO -screen $SCREENNO 1152x900x8 &
fi
;;
*)
echo " Usage: "
echo " $0 start (start XVFB)"
echo " $0 stop (stop XVFB - not supported)"
exit 1
;;
esac
exit 0
chmod +x xvfb