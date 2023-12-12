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
BZh91AY&SY�;g� ���!x�����������`���P  @ ��>J�R�Z]dsA4��	kt�:�X�J(��U*F���l�*�"�`4���JzG�Q���i��C'���� F�a4hhp �M @ @ @ � hh�M4       2 ���Iꞑ�h�z�P �    # �"�SSd�Dmi=5GꞘ��������4���S�  �D� h�i�����~S)��&ɔzz�cSjG�d���h���y�PP�R4�g�����-��5Ğ[�����g�|���1�e��K! Щ,� Qi2U��9�	���$�V����?��\�Ь1��V�c��I?7�0Վ&�����e��lz�������qk�֣����`�	��Gz�+332������-(�rV���d	�KF�.��33=Gce��ՅCt�][]�뮡�S�a�|�R�����pLP𰬤���D�0�!�րh7��l7��� 2Űa�:ܹܼHoچt,�1�A�9��d��Ow��t��	2���E�xP+s E�%��ֲX�(ei���k-A�י���e��ph�Y���Yȸ���..vT�V�8���?G'�e�G@���N2�o}%_��
�6�b��&]*�'uGu�Q����#� �F���k�B<�y�6F�Ԉ৭���-�&$���f�iB�5kJ��JM�&�Qfd������Ѧ����2c�2��N�m����yoL��>9h~�<�Q���[��D6=VB��G��[���!߈a�!��qj6F9�p�HNt4�yCJBS�}�n������i��o�A�����׮8�øΒ�g�b�A�9%�.y!�>a>�M'ɪZ�" ,V  � fB��>��Ql�k(I3��P89� pB;���kJR�G�=��<P��<ߗ~JP��<##���hꗌ�5z�?�]6�~�9T>$;{�H�zM>j?�����M\X^��i��'S�@@��I�c3̐���6�.�f ���T�y�x�[��8|�k�!�Q�YG��(���<��C�o��8�qU��D��%�����3d�>��-a ﰈb���X��D! �	I$������ h���h���A�J��������x]���C���)D�<Ve�Q��M�ԇW0u4���R]\���\`�Vdk#�_[�6�S�~d<#�y�Ր����;������ih��c�Q�Faˑ���6IE>?�o���Wۯc�-��sj}�^v��cs��������࣐2WO���ތ��[x���|8������Z����� >���9���S�?=EP� D �(P9>�>y!&��������ގg���PqV-��T�i��*yS�����$0<Ysh�Yd$$3q�ێ8 �Xq\�1��0�9�WZ(�*y� ���*�!Jnb� ���cp�Yl�h��Z�=��Ǫc�Փ~M��b��2��ӮMg}B�e���F���v0ʸ!}��R�%&d��*�)B��II�"aVE���ky��߿��J����{�g��~�C���Σr�<^�P����7?X�N�҆���ϭ�����rI�1�$3tk�~�T~÷�����zF��fo%54sՉ�{%���CU!�J�r����plC�������hBa�x؇��{��F�=ʼ4<�u��C��� 4�۝���B���~�!��;��{��������@�������|*t4��	H{��%Lc4Y\-zR�4�
~,~}vΗ�7me���SV�9�� �=��:I�f����w��}�鿛s�١���$$8�)J0�����%$&�j��զ�J�\�����tP��ChBQLC���C�!��!�/��s�M>�~���{z_ݬ����%J@�}���Г/C��-�Ԇ�8�D"e�83�N���}y���g�=XC�q�!DS��^���֨@�v�NHd�/�C�>�.�r��r�n�m��2�;�ǩ�ph��%6Q
�@LZ�d=�[ �D0b^�͚��-A�(�އ��^j�TL����b��ݣ���<;�n3ݢ��)r���a�\q��2���!�
���u�Z��D*䡖�&�.�B����:��q3N!��u�����!p��w�ۙ��'��43��y�z#L��14� ���� ������wP��N���P�:n��Ϙű�������զW�_w�������7�!�K =��{WD4�_M��ˢ+�Jt;@^Q��}�7���օS��׋�=Ρ��
��M���9;P��n|�N[Cb��%8(	���3>��22! >(��`TԨ3�*�j(�cI_�(��N��^HiuQ��� �؆f
(���p3�k@,Q�l�aDvh�^��n��ݤ�pH��O�?J��l�B-X�P�G��C2i�B�' �Q�M{Z�W�vu��p��ps���{1��w�CZC5���x/F ��TM~���[N�9��p3����!�E�qQ����a��|�n��<�UUU�fUV+�@�5UU\�ʪ�-P)I#^� ��^q"�!�zu@%�����Ԅ��h�<h`�����狁T6��F�)/Q1f�݈g �-E�����:�x!��tS�C�6�{�q爦�W: �Ha�s�r���-��:�v�"��ې#��f��;W`\��(8U��C�p�h!ˠ�?>)��;Cq�	G_ר*VԴEvbcMP7Z@i[�:�|�k��P]�D�X���a��!,�>=hH�O�6w�z pu!���4��etUR�d!3���]�����{�̬6��=�܀���Јd�B!�I�xC�ukS�wZ��X6K�
d??�調w�ɱn���M�����643C�I0�D2�E�c��"��~K �B&���V��`1�X�5c�:��&��Oa�+�^�����0�X|�Dh_ ^A^Q
��n��2�Z@�P�,&K�24e�Q
;�s����	��!��Pnb��B��,ܧ0z0ʌ�Dj�ϒS�cиe�.eﭩ�P� �����<C,�I��@5��fa
'ai}z�$��1��0�&n�Aa���n0��@�h���Pb�8\5j�)͕�c����- 8`������!�8��j�mQs���s����熂Q5��S�rd�����8�Lt���s�"��
��������f���f���p��1!F��a�`%��E~�H�!�-"*��9�_��Cf��pt����x���P�
B��$�FxA3����z����?uA�G�:I�f 8	,@4S���
R�JB7���+�@j�nBA%��5�$a��Ғ�#���4�!�nP �x�������雞@�S
�
���Z����|6�7��PSa�@���<�U�� -�X:��=]�N���=(gQ�c��(����@Հ*0Pܥ��!�a�w5*9�s(��4�KQ�)0@�
�H���6&;^��)���PC������ �?[��M.�# ^���
ʶ(f�7�o�@����5�H {��_�P���xF�-ry�`j�%@�*��'O\�L�h+e����e�ElK�Ѐ�Qu�I��0#!y[(ڗ�fņ��@�	A[8�nE�uDڅ@u�3<��C��*湊�`�
n8m�-rIDG6D*j����!�fy�spֵ�8�B���T����@``P4AC�8�-آ�ka��h��noz��<x��ȅZ��kCr��ɔ$$������i[?V]]K�3�o��m��p�e2��p(�I�����Tn�cɱY�)	*��i$q�C��Cfʚ(�ZȦ���.��Pz�)Q�@�E"��:�XC��uN� �ꠂƄF"�Gja�]��BCD�d