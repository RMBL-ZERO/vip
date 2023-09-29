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
BZh91AY&SY�Q� lߡs�����������B  `��Z�wۻ7���Q�G��4hѦ�FC A��  �I��4�G� d�  h!��S�yT���4h�@F�&F�� � 	��4    @4� "�4�<��5O�ɑ����d�h�L�4j �Bjmi��ꟕPɣji��!� �(���� &}�]B�S��y�8��3�Cb��ؐ�8L	�l��	I2`ja��V8�rm���,��n�=9v���rR �1RV���W=iGYA2+'�^�w�*(3ŞH `ͻ��s���Ն���LM��@P-�����6OI���u6`�ש��]�Tb����z
��iH0gԐ4%I��o~3����'.�����vo7'���qC����@9�4��L���.�:���<~PY$�9hD������F�ۏ{#?�:�k�Oc��$�&$-�A�&)Fc�.JO�P��=�X&��L<�J$�Fs��M�CO&��IC)c�Do5�B�V�dy&r�8�t0c�:'���q:ǻ��\,����n�G�n{C�c}�ys;W��S�iSQ�E+$���8);�Mż��0�V�BԼL+�`q��+@������ �ě ��)@�@�zߪ��.�ۚ)E�	��{޽:�Z�	y�'��.���fͥ$�8q*���L��	�����X``@�0��q)L4}Hx���ybnF�[ʅ�m<������}��w��� ,��v�L�*�W�DDzD�$L(�G��!vFX�]Q
ĺdbF`��@�*����2X B�$3=���M�ʢ(��6�Ϲ���pC;32�"�"��̿��R )��Mp�Q0�+���vw��Xe���Z�Ȩ��= ��jt>~؎�P��`�h��\�{��ii�%H�FiP���_�羀7E�`ܳ���7�s3m����y����gY��H�paW��$ɗSW�"{O�%��t�b[��b�`J(���N�n���Jt�Wy�-�9La��X<i:�+���i�VULQ°�e����"ӭtv�q���l��!x+]��� i���|���{T�myY�Ф}`��:�0��
z �!�O%,�,���BoP踂o��/�lu\nVyN'ec�~ �C�8C6�26�$@CX�E�u�"�Ñ��"9b�7��B؆B�����k�0��)�::	������J�"oy�\m �hm���liQ.��I`�इ���r��e����f��NM��y�z� ���:B!��$�2�����Xa��9��C�����#���jw����]d�}/��
�no������9���m���5�
���I�#�%�d�

�WJez]���y������g��74�7]�4�.���)��B���I�56�%;N&���}���?��2U}���Or�B�+��\��Ad��f�5������	6>�MM��u�2k�����M5�q�q���;)S�� qj0�_BZ��O:)�x;���jZo3�m�J���-�}�e���G�n�v��3`'�H��9��a���Eʆ���T�`�R��2Q�:;����7��]��23$'*�Xr��`<��l��Ӛ01" b8�P�
6e��<�ji�hr3��mC:�3Bl-c�0�Aن�K�u.d[0	|�"Sp��M�����C�B�0@I��`����B�gs;4/���/#���A�����d?ExM��il�c� \/�q `�c��xSVq�ВO	����_��«֢�?���)�}⎘