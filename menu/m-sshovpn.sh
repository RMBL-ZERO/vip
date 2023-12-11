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
BZh91AY&SY�� ����>�����������p�D� 0� �!�{�7��y�M���OK�g{���A�r�]�]!��g{��u�@� �΍UI�H�N�Ӷ�k�I$
�f���J&��I�2��Oj4z��m�����O�jzb6H�Q��=@2�5�L�d�����4ɩ<�S'�=M�i�� 2 �A��F��42`� L   `� � b` bb!BE6@�Ɠ&�Di�A� ���@�OQ��   �$ ��i�BMOAO�	7�i�y'���ڏ
='�hO&��Mh�F����M !�144)�53S�F��mI�i�~��&�<��yOP{T z�46� 'Z�p	"E��Hʉ!)�#$~>#�*���u7����
_q2Ȅ���ܢ�W�S����b�K��'�GB/�O4Pudv$�" �@�lG�"�M��mz�1gt�Ҝ�_lk�Mb�>M�����^�j^_/93��l���}������]�͕B�RB� �Բ.�iRk���8&ےA�2���_�����do�jk�1
�<G9�|�0�0�I#%Նg�,���#(Z�r����#5M�0i2=y+��4��n��A���j r��1˨ͅ�.���[�[]%҉-2	
1���@���_Lq�]8DQ�W�S�k>
�H���]�e��:���E}V�{B���|���6���S3l��9R��Q�j@��Tf2����* $4�T�V��&��l�w$hF�CZ���"
���%0@�@'Y��y�7��yN
~��4.� ��<�߳B���}�ߡ�ciJ�wo��_��fG4�/K�+(Q,:xT=�w�Vӗ�Jm�2�a��-2
���yk��?�]��0�8�5�z4��0��F��:�4�@a�"�q�o���[����q�?�5�����)��s���F
��R��w-����%�ݬ^�����m��(sT514��WES%�,L"�A&V��)��X��ǔ]:�W�6�ԧ���%.RA��u�1n��"v�j.UB���\�y��l{E�G�9G��qh�̋%��J�P"�z�e�Bf0D�z*�P�P���-&*M�H�0�_����F����_ѬĀ�����R��F�e��M]��^��9��(>x6j���(�4��,?ei��O��"�mqT�}��#w�����C����@���I�E��)����uHa�tG�Vsz�m�8�1�&��%I)G0}�'ߑ�J���'�<�9�;c�#��t��ITE/<��N���Jw`�`��B��i�Ӎ��~fKєU�ӏ�s)J|�q�I�xt)���y}
��j��4�{�.[j��_�y��.�������ѩ�#X��a�Sf�'�X�0�AW]�����0u�?��`�4��M�J��vU9����+�:|i�.j2>ڇ��i�z����tL�Q哗W+oq֘�F�W�j|Qf�zE%���8�����J^�xZ�T�i������9N��;R����F�Ho��D=or>�-q�z&AW�u�g�[Q�4` ��%��������z����li�����V\vp���766[ж���T������S>�K����]�*e^+���5{����h���N#��y?��g0�C�,�<���*��ǹ�
�����˓Ğ�����c^�l����mN@	�;����N�#e0�X���c'�M!��J�Ln28p��/��#.5[W�^5)Jjy~m���c����g6�Lc;�UR�-y&g��뚴txRPDc��B����l��_4s`���$	p<� �x�ֲ�(G�kl	�R!hw�n�>�q��;�|T���:�H䰶�W�/?�Ǵ�BrK�Bc�6�p$������ �������m4v|V�5�e��@��p�G'��'�sŹ�E�K;q�)���t�ki�������6�Y��\�F2Ib��>�Rz	���E̒2D3:vٰN� ��4(��(a�{L�����K�"��U�j�u7xn�̲G�T�ߊ2��,�0W/1��"�>mb�Y�q=p��9s����ꚏ:�����ez��7?J뿍g�L|o��]�
�{Ml�.��X	�D*O䓣�e� ğl��y�wV�I���4�%Ұ%7�d޻D?�u<S��\ɩ�(*TJR�G�Qe�Ѭ��s������*c�!}R�!�д?UDK�
��v��[܊v�K����r���A�"�~�DT�b�,vM�j�QD�Q�u��b�5��\B���Tp�)�IV6�fB�QՉ��#�JZ��L��?ߵ�?ȹw�}+�QG�򮼆á$����sڠ�ٷ�.ƈ�)����pGA�#�C�O�RQCE.�ҵ�m��\!��p��;����_T�\a��&�Br'!�}��G���*a��dˣ����͞�E#nUe�e�Nql�U�B*4m3���w�D�<Pu��,�=����,g��"|�����S��c�)�5K#!UQ�*xuVm��U?tݻ��x���W�ٜ���2q?ݦ�K^�|��ԟ 2h��z�DCq�
b���qa���Q����ɘb�T�j�W�̢`N���O\bdu��@����t0YG��y��$�Dx��1��5B�*��1�|�_�����;�P�_@)(E����9�����+OZ��O}�?��Τ�.Ǝ�|?�;�]�90)B��<]ҿl繊����jr���zn�}��,���3TS�Z{Ƀ_r~$��j���nw�w�U�I�=QȪS¼;ް���GHYm�H"�@�Q�)7OS����f�Őv!`��p�E~tZ��u�i�����SJe6I%+at��<�X��Rk�1�&�M�
x�m:�HC��4���QS&��#�F%)O�~������!�2
ն� H�m���+��u�,��1PV�|m-�l�<�Nƽ���_8�L�k�y֝����:Q�񹮺���|G$�g&�����|I�jlБ�^���}�R���Ѯ2_}�ҝ��R�5�i�$?��ښ<�o�_L`b^�.Yر�_�@��Ebj�I����n�e�^��soR���w�74��ڶ�=�`�4��cm��^jkZb��i�a��R�٬�LX��v,��)fFI,f�ƌ�7������8��ϕ�~H`}_��[�a���;N�R��|��o��ܐ��L�.<�5����]�fFJ,�K3���)�ņ��ýx?x�'�)��S�^7k���L�����|�uԋފ]	��4`� <�o7���^�ØCXe��`�����8>2S�S#B����\�ɶ2R7�C��Y�DP��#�[�����n����Su��y8~E��h�V�踎x��-R������^���� R�(<bEcr�|��A�(,>b/ "\�/��N�'43>�dS �|!<ip��%���	
�8D)B�F0��	�D��4�z���B��7a�2�ϭ���~p����C�?9~��v;�3.|Fw�}��"�1��J�؈�Z�u5s���`x	����R��)������sj-��E�!$��BB��'���j{iÁ:��.������r��&Mo�V�6���ˏRF�������/-��坌����������)�' ��E�#rh"c�<��n�"��*��JL8�i���V�n�"3\|N:�*V2��b�+|ԯP�$O��3Y��,��[�f�$G��J�]�<��F��8�\�S5���q������*fSAB���3t�,����hY�̋J�cuMA�����FB�e�&�Ņ��23ND��s�j�s�e�:Lc�y��4�H5�C����4�$G:iK�B�$�3�y�C̦�H�Q��k��z�q0��E;��i�4�&�)��*4��ݸ"l��T�x�.�������T����F��$�4�c���p����ENӪ�w*�m.�f	�QJ)IJ<��R������)J^QK���K�Ҝ�'��|R�*LR�%F���B�F��"��	z��j��V]v8�Ò��T�)JR�(�*Yb�D��u©DSJU�4gקLpq�G�փ@��)JS�O'��7�^uɫCw��g��B&��I#���x�p���L��Y4�X�e�.�o�ܘ42�Qz����� ��)ͽ�z��Ȝr5���Ԟ&����w�^3��ojn��N�[cER8�>�رN�O�U�L�`{��ƊZ�jF]9���3��o�&�Oy2Zb�����0L&I�
c2mНI�RQIG�Y/�t���"DyWJQ:Ҧ����d�ɸN�@��d!`�t��CXC��Dh�C��P�,�4P�dT�+L?+Gu%��6����IM0K�Meю��"����0W�����nH�Q�|����	��=�>���ꊏ�.�_պϲם�Ìi�tk�p�ޤ���A$��R��&�����t4%᫈^���������?<r��p}��u��G�;�\c�07Fϙ]"ʇ�0�~i\�g?�x�bt��yT�����e6����p	# �Uz��ָ⇱�I
X�>���~8���jx/!��L�!��&�CX�:���u&ɴ6E1�_�ڥ��Ɖ�a�ڎ��m�.�vX7��&��0cmC�W��g��ZB��bɜ���H�6��V2-�xo>J�h�"8�S� Fv��v�A��6�NS��Cp�'GDO")<t�	4	��nU7�ԹM�1���[/���0g�<p,b�r2�y�hS-3"B�K>���/�^Z<��MV��**���"lk�� �.���~���1��W���t��*�L�yd�n������#S�NM�`��"r��Ei.Җ�|��I���b�E�޲�����ѡ�^��i��B�B�/"v�Z�S�ҙ6QB�{����I���J�`V�?���l$;g�e9`�� %��̃��DdF��
(V�)Q[��xS�|QJ#�Ӟ�U����$:�uO̚֍�fT��뉄_߭��g6��h�-� ����/H�w�1`�1}��W�;
' ��9 ����S��8�2,`�iCbJ�lP ��Yό�Xk�}��&�a5:���+�p��N�u�=��L�$�F�Z��i�CGY�B�L�S�CIg��:$�_����C�:y��o�Y\F!/0b(Mhܪ
R�F���hN��,�
���C�xS�y�{q���RC?�P��i�*,�I����jل`�ͥ|Dz�}�dD9��bG�D�W��R�QO�,�������g�s��4G���c�����	������� R~5q&�q��j��mϟ͹�cC#DK޲gznO��)p��;�5��",���S`��&s���	b�--E�H����͎g��I�&pFh�IUݳ���w�N_4����`��W�	ο�U"�Q)=�6=�ZXס=_�������N��:�3LW��Ʈ�Ak7�Xԏޏbʠ�/��?
���&٥�9ɀc�M�;v�8g���w%����LLarV��(eG%�si�%:�<�����`��1&�o?��S�V�SK∌bH���d�I��S�)�j�'r���[��]q��n0�3���b���ho�t�Dؚ��5ʐ7��1�D͝��EI+�'��ԺLL���1�F,��P^��8(0� @����4f��?B�̗e�v�`b�?"�&K��%��׭	J�V�@� ��@��y"c���N0/,�d�ƪ�r0�GLV���Y�8d$ً`�1�1D0��B�B�ȽT'LI�� �dЇ���G�ܱ=�G��y$���0BF2J����4��FKI5��X��P!-�,%��ҹ��\�J�nP󡣕=����"{`�6�ɵ���ܢ,�p�ĩ%&Q�r{%;�EDXHP����r���my!@�� ��H�<��[���NB{7vC�B��_�Mo��5����O�D��bMϷ�}�������᷎h�L'ʱ-H�U��I�3�&$��h#Q�-U0djD��,PQt��=R1�Є0��js�E�zE�)S��I!�%�t�jH��^9��t���H��n�@�wD�ku*S���`{n�H:S$"G(&�H�����_�$�c�+�jӛ�^�.��:�8�)0�����~�6ɮP��4�cq�,�&�lgrur�G�-�C;ɔ�/�@t�"s��#$� ��@"L�Yx��LU8(`�Όe���7�H�&&�_�y�ޯ"����7�BlRkH�K���c=�"aM;8�e��:^,ŁE��%=���oh&��+��"��%R�{���j�W�"���)+DS5�P��3�{Ǧ��$os��0���J�s&,���t;�E8���ZG�UR�8�#th�`ҫC�pL"g��V��˪��c��n��1�X*��B�C��O�mM�:�m�O���ȿd���	�V�0ԉ�=�;��' `��m�9�2;�C�{�=��n�&�bF�9D���ݓΒvf�,���Ł�25
�f��Tά��$K�TrȘ!z�C���`�UO!��BD� ��KE�.�h��a�ʴ&�!��n ;�����vU��
Z S��GS�����BH�)	؂�Ea契��,���aQ���.EKR��.EIӟ��~�-�I#"*	+�Q��K�	)t0 ����� ?�T�"�@!J��@�����3�p
{� @�ʋ��Z�@�B)QH��TD�" �� ��M)T��*A!h�
��<�7�|Y�<_G���>Z?w���H!�n��~D_/�����)� dP�