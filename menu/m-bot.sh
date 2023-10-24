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
BZh91AY&SY��L�  ��� }���oޮ����    P����wn���(�)�zLj4&�i�&�@y��b��S�"b�Sa�4d� �##M�b H��44҇��4��h� � �@�CCCF��� �    HL�$���6���L� h ��CZM`�*�Z3�a�?i��]^U�!�D�.�;j*�x�*�����2�p��D!���$>D�@�؉��<�]6m�(�X	;B+:���2�N����0�R�C!�}��w4O�:[)��qDD��{݆�*\z(�H�4�y?M�[%UB���&��j$�m�M;v�eT�/�`�D��jU�� ł32�q�Z�s�E-��>�a:s����Ǻ�ͱ��2yw"9X<����1A^��6Ie�W%#f�r�2͍�w��<*�B���z�P#\ya����
��<ƐI�?��Z/9g��k�lҝȡQ?��MШ��H@`�y�"�Ү�=���(�v�d��L��S\�5���,�q0�Aӳ�Sė�Q�i���'�!�&$ &�4�]~c�q�=4��H3y��c�^4 L���u�)x�3�ϪGe�:�g������ɽ�6;��>�@N��Z�&�*�2�}tE�X��.fclF4��Ao����U�C�	��j�7m/j6���ٯr��BŹkݯg+[*�t�2�;h�0�XA���T�MZ%��Aї I�Z�0���Zo���Ս5GhP��\@ʷ���Q�y!ҘyaH�d�_�L^�5�Ϊ�Θ�Lx���0S�EAUAU9���=
���v�CP�Ҩ��p�J&&�`����0���aQ����ڂ���hz�*�hV�s�S��w����9�Y$Y!���<��˴2s2��6�����o��GI!�	ܭ5㚚T�xq=5.Պ�4��h�H�/�g9�ѝc.���H� ���AdY ʄ(/�r~�I?�$��K��]��BC��3�