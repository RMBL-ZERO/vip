#!/bin/sh
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
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY��& �_�m}�����������PD@  `��M  h)@ @    iM4)�'���4��d��S&�SC!� �OSM12i��RFT���ڙ4 d     � 4 8h�@h   �F� �  h� � � h�  h�@  d� �4  Mh  �L�	 4F�`��6$�F���S)�yCjz�	��S���G�v٭���F�Q��CA�ES<���H����k�PXbA�̒�pQ]!Xbf�H��?�.��xRb}�MVH��J��JBE���e�1�v���&"��
���c4]vƱ+�y\.�kd�Fo�Ȓj(��s�52��[� �B��e�d��.A���%0[�l��$����&�ȍ���`y� o�#� t	�D1Ny	*���=�Y��R��z$�Q���j�Ť�3(0��wW������;nC���Ɏt$�KeD$�t�� �`�G� z�\m7��RZ�6Gl��i����er�Ov��"HI�i�o��Ӳ^�I�|~�i�����/@�ipP��
6���w4k��}=�C,G1�*�����Y��ZX�q�<4q�h|�Ux��ZH��9�]���] �0�r�ա2 �a�G�]�@��$�x�������Z��d�� 㢴wr�H��=���WT�����,�2�Q���_���Vrt��Ku��X8E$hqe�ͮb�������dN�V�	6ΌM"o�X��G0�#�x��7��RQ����s��V�ٹ��n�	�1��d�G�.a�WL��Q�oA@,H���	$�����BX M�䉹m��4�����$r�����z�a��p�3]F�T����k���!�9�9[���{�
���y�vj����Ic�^�����Iܪ}9|G�jT�t�M/IPƘ�Zw~k/��6B��'�)�h����ف�Si!�4�>q��ZOT�/��Ó�F�u(j6�I%�ʹl�I��ƅ��������Yj*P��Tx��_O�NE�dNjsJ��1�԰����=�����Ǚ	��v��Ð�S��������$�V��贫���4f̡6�m��H���%�f���T��m�T)��/��?Q��C�|%��""&��ku�P���hH��I��)BY� /UE蠐l���V�� 6��XT:⴮`%�9�<UL)}���/�o��)m)���V %�N��$>b&�@U��y
�c�`팄�Ƥu��3`����Fԩ��F�D"��kҒ��IԒ���R��H�KP�`�i&pm�������}��ǆ�O��l��ര�!�����E����F���aH�NΤ����F��H�w!��ݿ2J<�h����z*ș�o8�/,?��G*7y{Zx�����T*둘+8��m��b��sz,&r�H��Z&0Hݙ�������tWd*�S�:
�T�L�e�Pw����=U�,�˞�7H�YF~|��CI�V'-�rc�{�HX�>��Lr|�(�YAlop��$A���Q�u(f��j��i?6MY�"�!�^tx�HJ.(>��q@�}��+(G�G���I#���eg�Trk�yCcL�9�Rt�!X�&�a�A��d}x%�%1Kw���_��D?��F�4}'�|�xʐ��w1��+��=��_��i�G�b�З�X|�0�0-��~f��g���Y��kHԥХ@$�8	�2d��2'D�0a�*�`}h���JA��`�al%֌Q���V�P����D+����BD�J���3�)����I4�� 3�Ez�J���t��Y����f`�<�aꙩ����Je�ζ,�!-�9�B�
6mBK[�T
�k%I�Z�ܮ;C)"�A}�����0Bi?�2H?D0m$Ɓ�$?��QQeL@g�׫�]#��G�����.�X�S9)l0��pT ��`ցPV���*Ȑ��Cɇ���,�E)^�m��xT��/�oH�H+^�� ����a~���
�2 q܎��Fp�i���9��;!\aI�"Vr��A�ߘa�)٭"@$x�(M'}�h� Ԓ\�u�R4k4�u�j�ү�g��C0ėI�u �	�!�!�hB�BM#E9s��dk�L2{�l�M��DHT>�)���y� K������*G4�s�"�:	��-�H�Z�n$�)���i�-��!�-� ,e��/Y�&�)fuO(9�:&���-13���Z�%+
���!{��R`5���n�TK�+�v���$���R�?W$�����xH�O'���+I����
���B3p�t8X��U�4�B$P0hlM3K5
eR�6&�$&6��c��(���� lИ12J�O�I���eG-g��
��|�S��+*�4T)� �e�!���� E%�K"��>�`�xȨP�GL#�1���.��He���ʵ;�w�ė���3h��>")�#_��&�3���?��M3XH�������㚸iNW��yy{9�e�������ì��`�qq����-N�,�9�03�AL�h�$V�B��b���<b�.�"ل����B�AhB�*U��Iw`V%� �T�XW0�0 �щ��1�
L�k2�TO�udh4h�iI,�.�.K�趌�g�������hB+�I���o2D�aQLD0�)��L�J����41�H��_`HjG�	6�"F�!�S��49)�F�f�'���`����++-�+I�M�����c�Ƙ�AMS	��+T�c���$�4PfHmc*�ۮ�
h���r
��*�f���Z�I+��9 z%D��p)W`Z�E�&��j�EB��U�hh��>�%I��t��'�&v΃9��j`�|^�%o_$w���Z9 +�P��;
!ldQ���&r�����b����ɡ&tT(��5�̋.d!B!���!l�<�:"�g��`��#W�Қ����~��@@�?aъ?tA1P1�Ā�$4���?�]��BB� �H