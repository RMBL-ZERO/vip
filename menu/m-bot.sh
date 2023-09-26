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
BZh91AY&SY�\�!  b� }��v+������@yU�m�p�4M�S4ɨh4yM4 � � 	� 	��0� � 1
G�F�P4��A�hd H��'�z�������d�Ѝ4Lwk�E��DeEg��a��pȇ�C^�L�t�,��˽�� w˗���\9v��#��U���Y�Ĝ�EsSI<D��v��(i��̝-z������.PQ#L�U����X�&���Ū�;��d�˂�v�C�%ʨ!]�,�p�ٳbr�ä�� �-<Ug!Dhd���&�Ϣ�i(
Ґͤ�f?<']�s����EO9h�oH�-Vp6#uIa-��ɟUZ:r�Kc��߽7m�c"S�㐜G���H�t=��<'�6/e,\��1iP=0B|k�2���EAH�6c���Q���VAV���mU�(��Ū�5,��30z�t{<�b��������+}��p���\A)'��CU�@bg�+�1SFf����k���s���U��ϥI�q*��У��TZaQ��H��~�]��D<~��}�`w�~�%[��v�5��s%�Z�������H��x=Td��Ʉ�IH�k�} ���fS-�s��"�� E���Ml���5f�:Y���d�]�rF�Z"V�<�V�,�����Q�d8��"�5r.�p�!�fB