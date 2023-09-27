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
BZh91AY&SY?G?� ��E�@ ���?�������@�D@0  `'�>R7]s�j�$�'���OSiP=  Ѧ�hQ�z@ѵ4=@ q��M2h `�44 �  L�hq��M2h `�44 �  L�h%O�E1�� d �i�  � "H�hS��S����z�����   �ڂ% �����OA0�ڐz2`���4� �P��M)���	��W�g���({���W�U~�H���Ho`L�����B�4�s�P*�����A�~�#]m25�V!��,da���K�2�5���6k�0��W+��++�]+\&mYuR�:��m|����Q�nݨէUk6l�ʓq�l�_���Op��u������(���]s
�T>�MR8K B-	��%\$�9TUUUUUUUUUUUUUY���Y	*E��^Li������N�q�)a��@�$9�r�J~d?�F8G*P��(��(�)sB8�$"��B�(�zD�)8�1���Ͳ��:I�k��fOmG�O�Ӳ<Фe���T�RM%�. E��>o���᜻� ���4�滃�.��'g�}J^�4�TQ|Ƣ��h ��e�#���H�R�P����"�P{Lsیa�=�]V
�Tk�����:ٽ�\0����*5�~X(ش/����R��LEQEQElBB+����s�Tf-				��P��,5��]w@�)ܺ[�
�K��u���]qq���.;Ǖ�@j�S�/ҫ;�����r�4�h���J�+S�6ꕲ^%[��º �<�O{���I�j������)����X��K͛G_�V�[� <I������>�j���^t�,��U�1�mE���� ���v<\����3w;���~"�O���+�6����~ �����O=R�B|�qFC^G5XԒQ���|��PU���BI$��;⹿C���i k!���C�)�W� j�Y�w갹E��ش��?(e��k}�*�Mɨ���h�!R��Bּ�*|Ǟ��+F<P�Yj�5��2~y��& �P�X+�@��'F���b+�-1�HB�I$�J�W��t�L���b½q]��|g��@�}R/�Hi��\p�m�y����S��J^6�#`H!�:d��>�yƘ�WL��6a�t�M�ܿ��m�o�y�	�PP@�S3*�-�B/��\�z�x���c�1�c�1�c�u���@����s^X��#Ȣ�s�aHHHQE7�s��i-�$$f��x�7&*�
�J���̀����Qt�Z�*�l������!}���|G�
!EQD+4������ �G�o̫~��K!	c*UpEg�<����	�g�{��:]�.�9eqx�{V�}���ͮ�g1��2zSK�%]�A�^B�]� ���"��yF��@{�h�6stBBX+���@�\�� ��x�u��zI�j�+�oX��2oc�1�\!$�[�;�v.�HB 밭�]�P�#f��:�n����J��AwIȼW}��	$�HBI$�4!���ݽ+�M�-q�*-ۺ��qMD^��h>y�7����O �� ����'E� ���H�
���@