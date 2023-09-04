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
BZh91AY&SY�7>E 3��o�����������`���P  @ �
? M�� h    �%(�P��44b��z�ѣLA��@       � d  �Ѡ       �    d4h       �Ԧ�� � ���4  � h   �p  �  CF�      	&� &��)����&24z���Q��&��S�F����fS�I����	+Ģ�.92J_A���l���:�洵Kav,iT���>�\�U���%߸�����se��I��(t�'��Ȫ�M�uP����^�� T1;�83�Y��٧4��	8f|L��{��>���B�͠+�W���)��>-��Z�>�,?|Կ�7�.��U�+G���| ��S>r���J+x%��d%��Ѣ��238<���t��^�i�gm)��Bi7��a#q���d�#X�^c�F��:��ZҨ0�����l?��6��!��>$�Z����I�}D�".���u���b�}CG�����Ɍ�%#i�4��ﯠ�\%A. ��>�X�#�����SxƎy3$����p��R�v[Q�K�%D��{�	�X��kL�K@�H�*����e�W���>��0<���V�ْ8�q��t��WT��H-O;H�rM<1rs����0�-�I1��^,�m�>�.j��Q�K�/4�E!�I�Bji�20�D&���P(m��0�����_ۋ��;~����k!!�C<J�NJZ �Q����H���F����W���Z�n�R_/���wQk�Xpgߏ%�O�HB%5��Ć��tEPx��� ��t�9�&?X${$���=�G_��|��i���2��2�e $WL����,�_���������u:������ҿ��2w$*�PY�c��\ϋ�II%\�d��x��I�h����L&E)ҊՒ���x��' Y̅�2��LX$UB�%$.�1�����]�cG��
��:ڡ���KMp�B�Kl� =G�� �)�������s��RfV��_D��yk �7� ��
+X,��d��:���F;^#�:��}�	��0L-H�&$L�
e��h��<�5+(wa����	�c���$I�ʪ��"�����-�B���ctڪ�1o3�b����ؘ+�}��.1�L� ��0-�/�k�on6fN��^i�%��"H?"ִ�ҽ��8-<LP�n@V�3e8��Gt�T�aRM�/+�%FC8Ɠ3��ͭy�,�yNj�.W��xQY������U8���ɏ-f�L����f,�۪f�@=�~��t4�?��<��!�$� I�,d�"�l!l��z��{}���U����ck�&�`�hi��Q���/s1��sT*A?�	��^.�Q	j3izH�x�%���=�2K���.S�K�3�uA����
�U	|�YH�+-��p�������̾���Yx�eF>ж.bF�\a�#H���A��F�����xC���m1���J�4 ��f������	v9�p-�F=`�&�ε�R�	�F����N`��q�(=�Ҥ��BC! �d��.������֑�b~M:0��P������F/�N,ER5�0�*�`bc�|cJ��b9P-@��4t��o,�k*,H6��be���=绪��;�����ceG}B(g+G|FU�1�CC"r��ɂ!(@[/�hܪAa� �SL�ɼ�t�6�>|��,I.AJ�?��E��<��,�Æs�N�Gp;��>��|y�Jn9�漿�{w��'Oq��p�AV3@kq��pL�
����:Y�#5␎�Xd1�$�VT`�m4��
�|��ep�ެXT�?����B._g�F�\�Q8Y�I\����I�� .Jc�7TB���I#��j�<9.Uւ�Ƞ(0i��e�!�9N@D��aye�u�Z�8�G1RW�u���.�rl.=P��GQ��V�4��t�;�I��rP���
΢��cXɥ���^�ȋV�10��L�s�H�dC C#�� 	Ш(�"�:�%��fCN �Z�~G:XbPF�\8Յ[�Z8��H�Y��-�N%�b3�@�I��/��e�;��!-�Q�p�P���iJ����>P���p���	3���	�B㨀�L���*�`�����
v�jՕ7�39 �%��M0�R���:�i��#w������6��YhC��v���"$o�3�9����Q($e�o�`V"��P}�J��о��K�&�@K5��N���!����x6>,����Uj�Za�3�& 30! !�}���a4A �`5) B�!���"�(HJ�"�