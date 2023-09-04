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
BZh91AY&SY�OK� ����� ����������@�D`��  @ `�^w}F�cTqf2]t빝Eh��( 4 �nƁ�j&D򧚧�O����{J��4 ���Ѧ� � 4�&�Bi����5��    �                  4�$D��FF�hL�d�L�d1�##F � AH��h�I�i��=M<���ɣ�h4hd���M��z��� � @�S4 B��hh���SF��b1��#F�dd�������_��t6rM�6)�_㻦����(�G[h�~;�pz6�>���o'�R+���E���<��$@     N��k)�M4H���hs%��2�K8ύЙ����!sԮs(���)E �2g�})��o
��ۈt��H 5����Ѿriu����3�7#9οD�I����2��N8߽��s|N���keTv**��ә $X��@	�[s�'[X�'��K��4�����<�>�m9ެ�,v;�+�	��abM�P�0�o��X�8���[pZ�ߜ��/���5��.�GKC�Ɉ���/4/q ��jӀ_CD�6x`�_��2�%�:�����;�X�H@d�)�O��e�ERA�S5��;��HZ�rj����>Aw! �m.�ITM	r*D���>D���zOW��t�a����^>�`��`@A�hP��A��cVZٮ�9� ���.f�^����AD�9���~1�,@*�e���BJ @;۟����i.�5�dQ���2d�� #$(X;wb�PV���n8� 3�P��ӎJ�h���E�5E)k���]	QU�_p�?�0
cD��S��4#��]����y9�$0�~d �T�h!��� #H�-��-b��ƾ
�R`�篶��:���D����Y\�aq�s$�z�&�����&�#�HCbIެ�.Z��B]���ܩ��q� ���q|hKB� _YNB�l���3E"m�|<l��oc��(��Z䛦��6&�FCmFUp���V(7�L�6�6!��1C{�0m�4�8Ȭ������l����2B^t%���שk��b�/W 6� � �����!Y�b"j�O�n�����9�$Ts��8�ɣB��T� E��,�ޔ�N��W^�ZZͭ	����&��v,?|�x�l�~�!(b���(,��jٲ����-�R��C5B ����qԈHu�i�4$ߌ�u~��Ӡ5����S�Z�S�z7��a�sl������ q*�6��-Kp`]�1�ܠ�s�P�O(٣�3�"��J����K$�H'Һh��	�?Wo��*�J�$�W�~�u�!Z��6���7��d��w16\��g�ZC��]�ǈT+ �.�,T�MM\2\�_v����8{�/8P��ɯ�#�"�kQHnm��\b���Ti/ʋ$-������2`~�tj ]ɣKh�������E`^%�M9�&Q�� ��v�4G�F����#ǎ�֯�	�2i�#%I��&|U©�� 3�'���	n�u!!���E���B[�G�@���g�f��\az3�\CBZ�m:LZN�3������0���4�04�]Hp�z�'d�� �M|x[�Q�6��?��.��R��vj�"D��0mbu��!0
���fF;��SQ�Pf��uP~-'x�ڲ�L�A\�JQ�q�ه������!0�4�+�K~w���N�z�<�d��hX��S2���}A)ߍ��!Pp<�����G�;;i=�a�<?��3W��A��?W���Z�Ï��68�B^蚞�ܩ�~%P��mF>]�/iB�*�Y�����<�VR�W^m�g�1 �h���<J��\,����"k�\�7���'��2�3�$�3�~�����`��K���ͺ�ʦ�~�"�޺�O���
<� 9)�W˨�ű�g-It��ݒIw�-�}9f��T<���0��D�)l��ٴ�M��	���@���)�b	������S�H����1TT�q��j����P`�Te�e~�$(À�N=
����˱n�\�h� �0F(ܸ��8 K�iKSE[U��$����IH�82+t�����0St���/z5����ߧ�S7�6����r�~�V��GX��=����!|a������5��
�` �T�ÆL��q�ݔƀ,��õ�/����SX��D	�A��F�=��N��yvc���v��T!�$WtPz4,���	��9iM2���9ס;�"M0�@@Q��B����d�INB6���FO��DY[��S�I!c��6hJ*�N���8А;\Cqstݚ=���j��4�|���$J^�S�����=�_h�@/��(5��Od��9�)r��Aڱ ���B����+��W3�2E�P�o��
�d%�M暄!�}�4��D�H�3(�iL��v���M㄰�v3��@"!ԥ��6��o�=b���T��)ʷ��RS��.���%=�gpŵ�8�ŮW��3ǥ$#3^%��
�`ʫbK�@��U��R$�-�F��:�=(J�#3~i��BHHabG��oh>�W��WAMn߱���m�_)a� �O6OO��Ζ���FV�ܬ�7Ȑ� ؤ��]"�!SJT��P�	Kt�ԧ'z(2ƹZԤ%X�}q�,��:è����0� �Ba'( ���6�@�n�zt�&D�ocJb2Ԑjv��#J��F�kK���8
�5��4��O��0m��?�(�ިdbCh0O--Ȭk\�1]�\��p_���D��g��>��$KL��̼1��:�Y���VRB�C�%�C�y������͈��=;�����"".�����
�#M����M��`�k����4��x ���"���h��k�SJ^M'Y�W*w;�F��Ԁ�`/���H<�ik�L>~�K�X��<g&T�8&�����f�6q�>䤹��$$3[@c��%g,!���zR*�3R �F)�ʑC�l���W��ぇXz7���١�@�&RS2%NK���9����8|\�\!���k;��~�T=A3&M�����H��`�§�D�2ǈ�)^��Cat��Ġ����q�f��
R�"q(D��9�R&�&��0t����A�g���@Q!&\�Ҽ�ͮ�V&���($mG�Je0�D��d��`#i��0<�I��Z^	+٨���P~��0J�W0�40����:{S�k9�.�?>�G��'�pw�ը+���*υ����=�Z?�7�:���˝� �p�_
=��699��%>�):E�����Ƒ(uZ�ш�ʝ�I/��>S_�֖KN�9L!�q�X��w�E	^�N dN	I�)����$�Խ`��3�zu�<�zD���o��0�K��q�IN��h��؋�%��G�����M ��X�99���U��9�}c�Zl�oi��QF ��h�2L§���������JuwD��9@d&�i�0#��,`Ž�62♳B�yl��X#�
�(A�� ��gd��C�2�7���B�%�
���jV�ߒ��b�)�����U����`�6�� /J�U	V �@ @�A��a Pw@��:dD�&�g��B5DJg�4��$��5� B@��_��wlEd6�t!D���e��$I��@/lLFHTHP��L�ʘ�!#@i4�״��e�i����������q�;�E=)5"�zV���_Ya�_�%�`�4@$������/l���ڌUv/�"��|��x��|�z@ѣۯ,�>��B.L\��?�T�`���y�#*���kSTSb�6��.C6>�7&I3A j���c���AQh�[�=�#�����z\Q�)�1�1
cX�C���r2� BБS�D.�59�d�X�����c�e �6t�wr۞������U*Tܬ��e�f���p�
�`$ �(���l�^��U�ܐ�u��=չp��@U�DEM�JB�IBS�w$S�	����