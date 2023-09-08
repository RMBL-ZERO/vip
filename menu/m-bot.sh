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
BZh91AY&SY�'o� �_�m}�����������PD@  `���S]v��ov�{�  �@ a)!51��4�h�=MM A�@�@ h �
e7��CT�           8h�@h   �F� �  h� �$�)���H�14 @@ �   �IJF������H4 F�4m@     0�"4�M4��b ������<)�<�jzjhz����x�j�Q*��;I���3˖����k"�� ���b�I(�2�����dV\dA���I^8*���24�$E?/��ͬ��jfAq��kU]iPH��v���F#��a��$�Rj����c_~�,�Y^/!��ɘ��a"K)B����\2�SU�v@ˋs���.A��}:	L	��,���PěT���eYI(D�2�
�(��PUA��]Rd�=5z^�N�>I"�s���ZL��JF�c�oGo�e��y�~?�厔$���I/)�*��
�/����Uoq�������#�XW���B�
"
���D��3����ͷ=��'Q���,&'6���J/J,SYA�4�Xq[D�z+�P�":O1K�||�|=�Šk9��᫢��t(yif8��\H��9T�.C��A�3�:��3m�J�¬��7/s
�ľl����a��%%��W��T׀tj)w�\I/�{�#�4��46R&`Z�$s�Q8��Rc(l��$�� ����=oYU���������n�E��NH
6�D�b1�BG��Z �|J���˟]������8�HH>!��@>�t������
��bF��"I��#	��� �
fY.�I�bhx�:ɶ��U�44��I�s�3��h��$6,�lܒPK�]ꔵ�`fB,}��ĤQ���Q�q5#�&�<�����n��{�f�[�P
��HcLC.<�]�*j�A,z6������M� |͕ ����s���8/�i�s��7%$����l�I�e�$����)��!xU��ءuj���Ԝ%�'59�%����lX�`z���@i>r��Ebm���۸9
��e>-���FTK������6�m��������`��is*���#ө� ��j|�q�PI�"""j�W7a��bH��n�P�_�$4���w�_���K��
4ZPu.���rr(x�0�V|��}���/P���2�iU���@J�:��ț��� �J����x�B_1|�Ȝ�����H���&��ULS����ϗ�eh�;�L*�����!1���l�P���l^�/���ɟ���s��𸴭@�D>��ٚ���̿~���r/^��9L:e4�=����BBj��L���+OgbH��-��k��*IU*RF!a»wTH^�/tfG/��g շ����#~O�Ȩ���pu��Yl*�$s��
�Q�f�
*bW�'�J�g��uY����$i��~��b����_,z�*�J���a���k�>Vq鞓���5�.{r޽�o��qj����͓V�6 ��b�����h�C����t38����	��!e6���h�Aƚc�Z�ۤ$��[�;�5��@j;P�A���YSʵ��䘥��z	 3���fQPjC�P�D��bMB�Sll�gBK��s�%�̴7�1�ѩL#�6�?�s�r�
Ŭ���)E �9����=Pw��dN�H]�� �����iG��{C�/	ph�RFH�qD�3+ �X&����6��A��[i���$Iy���ͳIj��p&�M)�����f�ְ%2�A�[y�<��r� �z`H��flm�%��@�4��M�Ky�fT�B��В����|���꘯EǊZ����Z�ª����C��P����5��6�c@ƒ��(P��@i�ݳ�ec�+�bDy�.�h�S9*��a�A�T�F6Z��U0�p��4�a"CM<���Є�.����m�𢺴�S�����9�BE;;yn4s �(Dq�E���u�֛�Tg��A���,�a�+ ќ��f�
��C�'nԉ	� *���9��6$�+ɻ5����J��6qiZ��=�r�D�NøM���!� �ɡ
	4=fz��u���S��ħNk6��h1f�R�H��E~sW��3���>����rKWq�O�5�w"E��IP�g��i�-�Lb@Ɩ��E�������5�lҫ �d#�s��Z�^�3��[�	rJV��r+� ��V`5���sL(K( �3=������/>b���n*IK&e���_<��&/2#�0)�.�#��:��E�K�I��JEC�L�͂�IB��dI$�q(�MUZ�,X$j�h�5Y��$�T��e�i (.��_�AaK�2���V4�d:Lm$�4F%
Ş�E���v��"��P꯿� 4ۡ+E�K�hHe����;A���.^����k���gb���L]r��!�(T�v��hHִ�18�^�^1�9V=�}�����C0 m������*�<F��L�.I%����k��Y d���$4hVm��4.�s-B����V�Bd���L�!`t,ҭ]+P��iz]��^Ł%{SA��(�!��
���k%�e	�Wpd�F�U�i%��#���.�$��]Ⱦ��jB,�Y���o$�,q�d�\!2�k�P���C�d���BCR:0I��b4���U7jrULF�g'��y�

������ĝ�ݢ���c��	���*�1�^��C*2Hm�
���A
r6w�Aa�0�I�|6l.!$vQha����1q8���.�F�p�M4�U������z�9���~��<yic4��oF���'���(q����~��H����gQ�V�����uY���L�\��c7�š�b#y��&vPQ0,�n*	'�-0��^�
O�䐅�K)�/�|GA8�X����� V�7�縜}A5T"�^�Q��Ah�T$p*E"�EQw$S�	
"v��