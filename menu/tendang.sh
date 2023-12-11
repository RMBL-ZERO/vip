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
BZh91AY&SY��N ��qx����������`���P  @ ��| ** �B���T 
�U
�R�)) 
U p  �4444� � �hh �   CCCL�  h��   p  �4444� � �hh �   CCCL�  h��   &�B4h�iM�T���Ojh�Q�����SmS���hj )D��#)�����@�dh�h1 4ѣC@�h='�Ǿ.E�G�{֔�фe�X��|I������3����3�����ɲkd��m�5�t������̜�ڮW	���lbqpbai5M�bd�͜��F���S���\[�3ked�1S|�r���J�ؙ0�a�jbdõ�����lkW�I���W��W=�p���9�q���.G+6�}G$�b�o��m�b��S�N�L_,�W�bl.W^��7�5���Sz�7�a�&��Us���q�U���"�U��9��{���Ѥ�����3����c�\�+|ђ�7�ɇ��\��MJ�V�X���]L��]�pjp{�[���,�#�huθ�J�Uҹ�mm.Z[��nk
�#*�4����������*��ee����kL��db�Ŭc��6\y�i�ߏv���##�kƗ\���%x�S�l{떭�G���CԹ�m��Э#�9˵��랺z�O�]S���Y< �/k�����g3^��w��hɇү����Iy[Y����3ki������L�scks����عS�d�.,R�sK�s�R���6'�»��n�9^Fs��[G�9�mwk�{[]5��j�*�U�ﲞ�]����ߝ^���X{�H�a/��t�z'�+�f��W��L���g������O��{���mv*��c����I�,L�����Ke�,�n�۹���e�����2���^x�l��b��daiVG�eW��F��Yt����K&`�J�+I��_��2t<���}������c�|0�VS��Õ;�CE���*4��mM�=��z��K����N�符�l�暧��Z��jJ�_����|���M��|��S'�U�����Z�6�|ml3~v��ժ�}�2��W���!}e��+�dK�J��"�22�Œ�5�k=�[,}��5��y�w��C��s�̩��ɇam9#��<v�曗l�.��jq�ۜ��]\�g���pl|��]6n[ԯ®�����a0�p��u����J�Z3}�.*�a������t���0���pl�q�+�a�Ɯ��wXd��i50Fw��j�����KS�U~i�n.i�r2�U���V�%l����)Ư�����L���ߊd���I��m�θZ��ofLGf�Ѻ����h�Gd謕�od����Ԟ!������ՇE����a��̦��&�
����^�����i+�2���XWȭo�P����9',���>w���U�<N�S���_���g�M��xi��j�?KЭj�W�=-mok��޶O����O�z�qe�.���pb�5��h�220��K
��Z+R�Z�!�+i�\#ʏ�����=l�aݙ�~v��U�s+%e>FS&)�kk�y��,0�����ZL���9�VV<��Ccs������/�~yȮ�S�V)[U�
�m�]4u�q��bu�E��X&�L�������+'�]nt��ѭ\���w'��l�a�XK��֬Lդ���
�2n}��60�J��sR��+I���ڧ.ry��[e�uӼ��k&�:�f�a�ڞV�q�BX�����:t�m��a[���Vlլ������cs�Kj�J�u+z�+9�+Ed�9�z[�s&&�kb��������i9��+2ɒ�Ã�m��1��W�;+ּ,,��,�22eaV,>7����%�����橓G�qkzg���V�F+,L�di&/�e�1I���#�V��s%~G�r0�ŭ�k�^Ԍ_�;��[KKٍ����+�3x�-)�wxR�z��u�_�]��R��r�h�쓢4Ut��7 �9���nq+6V����Xd�F��2�"��o�׽�E����ie�z�#
�<��ڬ�I���͚.�X��w�������w[\��q��t�Ѷ?|LR�N�\�'���j\��[��s��+��68�7S&x�X���?�Z\duP�n��ݎ�z5��Vm]���&�4�w���Q�����,�^i���eޡe���Ţ�Q���y�S��<SbV�;��ok�&�����z�M�p����p7Z�m-���1t�h�ʘ��%���5M��xiNI�I�<���L�kH���o�h�H:�2V���^6�C���j`lbk�z�&uW���\�p��qq�rac��eZZF.®��Xh*ʦDof�
�7�f�U�C|�Jbja��WvW�qW�Z����_$ak�E�v.�.c˶ǐ[o$oF^]��]V��#--�e�x�y�'�a�ʙ2a���:Z:�v�[�t��t3���¸��KU^t��֦R��a�Z��«0����V���3�C[��W鶱9��ݝ���j�#ʶ��Vȯ�N�˥^��[)��^��_�|%�y�U���r�xU�\S�]L�ɺ�Ν�Kd�N�a֬�����$���L��d��
�Ĭ�l�2i80^B�ԭ����s\�|[n,�[D�k.Y]�rͳޏ�V�E�:��1N��V���)���V�'���T����y��j<�r��rG�h<��D�ЦXe����t�����zSҫ��9��U�Eh�X{�ʛ'�rޕ���'�n��/Uw��,m!عn���^e��Y�b��Ɍ[�4��3b�yg<5M��*�G3	�\[$�6Um�|��k�R��d���Z�*�NZ�Fi�kx�K�6�j�-�����ɚ��ߜ�*�j��j�p��F �4h4tp�#	W��K�L��T��Ĭ6,>&Sc)�!dͩ�|��x�C�߶��sZ�V��M�ؙUƮʶ��jbmx�)e2�9���jx��C��YUn��XV�j�f�¶�Fa��̘���>�D��y��[��Ng��gJ��:�q�Ĳ��ٶK�F�̓���mltԸJ���R���D��F�NI��zZ8�ĥ�ؚ��r;�z��ubt�RxԵ��iv���r�9���wKʯkzY��S�<-C
�TpUwRi���l��#�9ս�T���FPW�D�a{�*�0��+������k��{���K-���}��}��^,}�¿�|�1xc�Hb��?�|������m><$�еX�hG�G|���ܑN$$���