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
BZh91AY&SY�n� �_�ax�����������`���P  @ �>}�e	���ϡ�R�����j���1 DF�f%Q(�44��   �   �  z��h�� �&& L	�d�D�   `�P� L��� �0�       �QT�F� �   @     J 4&@�OT<CSɤ�?TzjzmH�jd�$�O�<���$�#@D�FCJO�7���mO�dz���� ���oVe�y,h"�Ј��	�}_g�a��{N#�j��-�=_��i�؆l���D�V1��,��e�,٢�/�Bo0Un�'��b-�YE�f��L}�٣Ls~�6�D�tc{�hw:d���ցk�]P.m���kZb�����}`���v{Ѷ�wk��\���*���elꪪ�=l�I��+������j,|�q��B�C�KR-�)���h��+�}���1��@5� =�!#���Hօ�pc�G%���!Պ�>y�4� �߰7I	��'�!�;x�������f���4�!�2�hl�؇F�kZn�`8�����%�Ic�aW]�:*T�m���3G')�⫥���������[��-��w����&�ڇ��Q�Ǥ���5��R���[ws�!��H�-0�A�Oc��g�Dq�R������b�Wok���U[��UE.��UL`#
�1Ť ~w³����}��w�·��RC�؆M�X���pyX�!��d��UO����*!�t!���f����T9����6��
&/X|`ߋ�O���Bv��s�rDC���\�`�y̩)&]C��<�Iu��%�t��?�awS/E��� ��ӵ�Wxn�^��k�������c��3P:P�B��+ �kUUXN�|G�=X��/yh��B�%I�;A�>g&��\plu��55n~�q�~:8���͞������8�90�-	�oO#�� w��<CydHH|�a��B��&A1���$���,��s��UZ�$1j�Sj�`2B1����W�v=�c�eʮǃ
"��!������������&(Y\D���A Zѡ�X���H�.0��Z\d��X!P�ĭc����I����d�"�"D"D�f�$�q$��RMϞ"]���A�7 ݪ��Ax܃v�oO.]�����P����ݠQ�������am����~��h�aÁ��[AA�O/�OG.��J	( ��9�?�4 h��؁�� ���9�W@4,��o�L^����my|�å�_����� �^w a��y���o~J��y�DR)�A ����d����C�B�w�)os��s�*`n��*ljwLB���_a�a)���m�}4�AAA������@x?X|��i���&��K��e����?hԇ�}���cJ�I !� 8��8�k������XtL.)����Ż�&���$dyP�4<h*2Ao��ɏ[4223��!�(V��!���������/OpB�}k������3�����j���އ�kʆh]S��CwͷN��{X߀~���;]>���$��v!��Xb#��9Q�t��.����X��2x)���l���(���CucF���B�e��'�9���@�}�A�(�����x���u!��n/�.ѿO��Q����H��9Ј{(U��� ������=��;�t�\��~C_�H�t$I` R�!0	$c 
Y� &�_	k�WV4��8�02`|=�tMn��C�4-C��M�m��2CZ_�"�A�9�L�HD� �B�`�ddz�pU�$��#�*�.!��0E(��������?{�P�x	��3�c�Y��,��9���O*T��\Ft$����ްd4��
!����������rs�G�=C���к)�}��&ײ�B�u!�]��`{�9���C~�	�ǫvhCu87���qE*��D�uB��X�Z����!�6����
ȥ<P�CU��'Z�[׿��C��\��������!�i���!��B��:�~*�ȡ��CD,�!䅮��ޅݪ{Ь���[r���C�E[JC��w�D�@#�ǻ;_�
R�"��R�E���1b�XF>��  ������9!�Ч���T�K�Y{���Zt��a�j��"��.��ھ��mC���=���j�C^ �mn>�hkW����4�0A�)�����z�B�S����cG�܀�r�L���31��P��m~�!��:�m@C�������6�FA�}�)_*>(X؀�+BU��(�f�ϐj���w�Cc����@�Y���EB�d:T�rQ5��l@0�k`�aH������o덫&�rI�8��k*��C�m�"Տ��x;D2M�!�' �*�#��|G�ù�����sYr�X�8(�?����>t.�A{X z"�<h`x�h9ڃ�+����E��mCb��#�'QJR4�P�&#�r*��j�V�U ���Ū�I$!.��/�41 !��Jt�%##��*x��*�F�XuP���A���Ÿ�Hm�J֎�Π��a��Ɔp�Ƚ�bn4���a�h�� 5�Ȇ�@��� W��=���Av چ��qC顒'7Ԙ@�� �h��Z"���A�v5�<q���>nC@6���!Z1�uЇQ�'�4���po;!!���4°��z[���$�,�
~j9y�*'��A��+�cG'�<�`�{�!#<�h��G�rtB&a�;K�j�WBF�yt=E���6OH������Y� ��Nɫá>,z��>�x�d��:�]�e�1]mTu+aÒ�g>���V�g�����?ҕ5�V�CC��Hd�o�D1P��%���C���������'`�P��0�o`�6���O������Ԡ��E+�b���7�"tщ bB>"�y=�ǘӦ�4lA�b�152��!��7!gx�� o=`OB��Q�U�B&��L�B�����Q�����?M���\tu�䣝�nyG21E�!�rZ{�h������A��Y=|(|k���Y��\�{�1�_��04C���3v�F D80����"���K�4�j#t(A0(��7����`\�DH�y���{�����i]��(��vF�Y9A֎�`�h`�r���g� i�������������J��&��C)�q��k@ a�h�A�1$�U@�K%����Hq�1p�.�8͜�9��ܯ*:�>�%��<3�P���w����'��⣾�rd &K��7���U�U�8$WR���b��rF4^�P�8�B�#gnm�����c}Í�͓��!�����_�o����q��`_���4pZ=��0�a�B�����q��4'�rI�:�'�]��.n�.E�ϲ� ��۴ԝ͋���PT���tdt�d6oO��X��ӽ�|���2�x(��'h<���:Ň8�B&�k&*?��MDh��A7�`#�������� D��گ�9�kw܎!����A�͂X8�WG��T��_:��ˍ c�Y&!��`^�̰T�̾sF�ˍ���
��#��Jπ̱�z��r\�|����Z]		�x ��	��w�sX��@`��E��TD:M<�I(2�Hy�_����އ��!͹�!c`�CE#&P�'.�ƕ���۷j�vx��;)��$���Q�I����8c,7�S���ɕ,��Z$7���4>�`�QE鴋U��r�N�Y�BH(��e���	H�Q�D;�?м� ��DC��Q�����]��BC`e��