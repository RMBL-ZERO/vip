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
BZh91AY&SY3^N 5��� 	�����������sLD@  `A>x	��e���n��}���;ոw_G�`�UuL������}������_Y��a>�now�����x�����h��y����6v]3��.������wu��������v�3�9��l͢�Б���m]5����z�j�mX�N��n���fPvwh�&3 i�;ٛ��y�u�bټ$�2	�F�&���1=��M&�O��=�A�~���A��L���da$@@	�@��e4���O�A�z�S��=F�b�z�P=MzC�  4MSڔ�M=&��Q�� ��   4   jB �&Sʧ����2�Ѩ�z&��A�7��=@~��e z��@�@MѣSM�aO'�?M4�e=4��?Rz��h�6��S�CM �ADS���I��?*?*<S�OԞ�A�=��?SQ� 2�h_4 l��"H�	�@`�*������Q(�x"`(D�$,X��0@0@d���$@A�A ��E.�I(�v� �DdD@H ��`*�"�@D�$ad�ȲH� � �XF� �G�����Z�󲪊I�&���~��c�RA�}�����)��8�It<�� ��$�'f�G��n,�{�b+��"1b��u���#S��I��|��b����أ��\�g�:F{��.�!�M{փ\zz ��іn���aQѭ�'�_��gE�_���f��dNM�ҟOaj�&�X�jw���m4[wL��09t�)��~if鷻������Q{��Q��*]w'Ɇ�ů��Y���Ň+�b�"�'�3m,��a��ͅ���^]�N�XDv:�[ſ*�(g�?ǖ���N�T��v4�-o*�x�J0�"9'��܍�^�� �-��E<�C�}D�F���)��d2T�e<��=��c��a��o��i����\XJvr�����\�0��C�D,/�����R�)�["�ڙsI����vk;�����`$�,綞\�9!��Z�~�uk��d��}\�E���2ÝfZ�וC[��UR��[�­kb[Ѵ}5�V%�:��`u��#=qK�
�!�\��u���!Rp�����k �%,7`����P�
I��t��ORP��sH�Wi��1��xFn]p٧iHjb�Y�S�3M��w��n��^�=,ѡ�;��"�#V����nc}-X�t���ȣ6��0V4�@�n�D�/��D���F�GKF����{6�7�0��F�[���Ls�밅��}SJ����Z7�U�m�m�a�yP��36l��zö,�"��4�������NJg��'\'w������\DgL�ܶn��p�'+�MIS���6Q���F���ѧ��=|^gA�0 �@s��P~lY��{�uI@�>=� "<V J�<�I�M3s�fX*:��,7,Uh�(�	T��}�g<(�����?�O"��=8%D��د��xAZ`4���d=;-���H�U���+1�VO�>	�0�`�أE��5�0���▄���h����'b�A�		��[u�ae�IB�V!H�IĥR��!*@"	���=Ł�rqZ�^}� �����1�zLS3n��{���RgD"$G�.�.x��^&�U� X@�����j#0T��J���W�y�q�cT�ĵ�7�dZ�Y��� ���8	���;�b�}~�M�����A�o�����ÿ��������V)pnU���F@�$�8�j):�H҆�5�i深��{�?�V�cI O3MOqahM��o��ֹ<�'{�Y�߄��|R����&Nnv�G`+
��!b�FrK�&�(Ҥ����d��n�LC�N�F�t�5F6�9٘}w
�7���i;��v���ix���V"�2W�	�C�9��Q�:H��H�Iq��Y��F�&�C���l�C^Ӕ���y�DOZ�����D��
�6�Oq<��>U�Y�õQ� ����!+�/�/:���(z��	��)��t��E�w�R���@�^���L��9���1\XV,sAB<K6!��-=�9�2�x�	����p�\l�m)�"��$՞n��k ���� LHpvJ���)ި�\!�2p�2<8��`����p�d"4���X�B�M���� L) �A c�uHJ0jVY�Q@[&�;�5���d ���]��y%���N�����e�=T�}P�M.b�� wT�n',��T�S�(A�	e�o5�!\#d&��\̃Z^�^eUVR5\}d�-�2{�RM<4��8l�ѩ|v^�X�Z֫�}5&�ܡ1(H:�]��Ρ��52�g�λ^W\�p�̑�m�[E�@/�>Nu��F�9�S���)�(Y/y��C�/_������}u�R���:�XH�Ğ�}]ꠟ�r��r�c˳^���,��ݘ����.|�G*=�%�U�:q��&3)�e�[���a�iw���sD�1�|D����S:�0j{�)�9�����,��@�zr���;'��L~�s�}��}��J���2��������9B�lм��97��P�p�7�>���{&��o�����H�6��'���#��`�syd��6+�Ҙx������'3vԐ���ʜ�4�xr��>���l��w���A��7���X��'�����\�Kf�Ϧ豜�n	 ���J�TĲR%�L-����
���,u,��7�~/��c��&ؔ�k��X���o}�j<�7�A���H�u�������8_7�Ӥ�~6�9�f$��(�4�TĆv3P]���a%72��ɒu�Rx�T��K�7��#�	X�����9�r�#{x���B����8ϟ]4��H&�f������t�0�Y����{�4=k<���/�s)!��
R�M�r'0߶α��a+���m��|���g��L�4H��˩k}�:��a��9��K;��]5��(+��`��n℞z
��2�>��lI���q���r4o��	��#�A�*�K��uڄF��Ð�6��Q��r4��������s&l��9�Z�U�c�p{�	v�(L��.u���$��0�#n�Q��4$��p7�O�o�����p�p�6���B��Gw����s�`�hm-�2^
G~J�I���[.V�eM�#�F��P��gq���]q�����(lR�9>�<6u�x%�^A���Զ�]).���z@�<�07蝘��eV�֋زu��a-�!�ʕ�Wk��¨����$��ûY_�A&Uw��G�b	�t��=�'շ=L�1�<��u�-�q��-Y٤�֋h� �Ē�����k�X.����o�TOL፻�6�3f%"f�/��]�S���ef��m����밠.�����|�U���\;��E�!�MA@R�C�{��m�>x2�评"zz{�9����X�O�q5M �������ﻫ����!��B��E{�>�cF��8V��J���J^�� �C V��>� D������H�2B��v���}#��/�g�Ȩf�5�]���ˀP�F� �4�,Dy"���bR���
y���;�8}E�$�R�bt�!���{r˩ː��ԓ �Q^��s���A�_�{�[YɎ��X�<�H�V䑀��?���2����,��������6('�Ά�<�i0XlUUTj��\�`eO(�^|���ie1�1m��F���HE�޵��U�YP�j�4�_#��ol7]fM�~�>�57��ʃSr+�6x���ۺ��*�$��V���P(PB$@~�J�n�����}һ��{6ذ�R REUQ������{������H�J�����~�ہ�$�C4`E�U( *�aC`�$F�£$DNT�L�A%4�>�?���?�량�n�9<�F��	��$����?�e�����B���EF��nM����t�/vH����2���0����8B�� � �1E
UQ`2,b(�	��\ B�	5���=����7⺵t�$R��ß���x`��9{6P؋���cwp�u��@Y�H��"Gb��zDB���b�f_�]�MOCRP�?����ü�֙�2r�7�CΦ_հ0���Hؘ?�`$g�,ggO7�A�����^�da��,��L���h�4bK,�=��RAҐ�8�=��S �% R-Ħ�%���ظP��0#����b
HF@
�2^�Ӛl�-��B����T�y�d�7�����v' ���OH3Hsgo�/Lt�u�I��#��j	��u�qb"�inBq��-�l��� ��
5J���k'��QQD�������j��?ooo���7}�<RF��\�r���nӃ4��k���ŷ?����vT����M5��X��D�	�SS�i�g��Ob�F���тf����5����P>ł�<�O�@��w�~��f*E&(�%46`�F9��A�$��t��/Y���e`����U)6d��Pl~��h�|�1�}z�]�����$�Lش|�)�0�@9����"�����cK>�
@��0�}�Yɂ(-�
Sa-�(�������  \ral����BF�K�@@�T*�M����N���e�����L�b���pr�|�u�[�z6I^�|�L['�$��6o�n�{��������@�fQ��`~�PW������C{�b �& �R$AT��=���4<�>s]�����Rz��j�bW��'����4�J��ڛr���ħ��j�
<MI�"�Z�K�T6�u�h��m!�;��^Z��v�"�n�<\�\F=o�P����U$B���<DC]�ʄT���z_��+��Eѓ\ �S��q�+���}W��p�j���}�9�x�K��l��3pq1`���D��<CQ9E-N����=!���Q�� �986=�"{�!Fv"âADbq%2���"�����=��m��i�
��9�!����Q��I��f17v�#��H�� �Jqc�w�y�I*1�A��([�e�*��0E�*:���[�3�K*����.�vp���-���Šđpz7^��C��5Xj!2�a�!2*xu�~A�9�z��!I%�W���1��݂����s�R )d�=Tݑ��p�ym���;d�'�&fc��fȔ�X=���.s.g۪��Y8���c��0�����bSe��`p0?'ŕ˘���	!Fv/b��U_F�t�\"��(�X�J������آxz�XX2AT�U���zE���El��9'X�a���t�kzadȏ��;�ݏ��P]P<̫��/�9a��_���P�ä���{�yq.��:ٮ��(q�JRWVd�H��\-��L �Ga������ ��+�1��J�
_���%�0N���w�C5I�M��h�X�XZ�'�'���a^~^je�%�ϡ���z�c2�Ԋd��s��zZM��e��=û�,8�I�h�-.'��:��C�w�2/�o7��{&�T�ho;ބ�+x��	#�-# Zf��+���gM|M]H�{G��.QӗئF ��bB����챯�V��̑;�VX4�c۷Gu��Ǎ����ōxk��P�뮳�]\�m�����Rz��-In��z�v�m�\V�e�.�o�b�q�K���Ǆ��*��s�#�pΆwq�N��TM_=�>F�B�j:C�1n��43������<���Oɑ�����&�\��Wp���Qkn�y���u�t��)1hb��B�1�o����e<`n�ȑ٬i��`N��О�
�����
�A�1����R�% S娐�<f٨6�7�w�L��B���B$ �����K��"�~�e��;�Y�U�u�Z]_�>�ܧ����#�7`~'������y� ���O[��&��7G3ʤs��.a}��/��I����A$��{�
�<M.	�+��]MÅi���}!�� ��;W�
�S���֦��c�*�}�J'�G�r�H�Φ�+�C�M�T.�h��?�%'�⾬��)R������ ,�´��
��"�����o�	�CK	���*�d!z���� ��3� ܽ�z,�l��O��x O0���7�'�M(�L·�����L���(�A��D� �y����f�/h��8��@8Nj��3�0ȥ����$=��
����t4�,Gl!���z>��z�P���ϩ��^DwD�b�9]�ݝ��	P�=8�&�%n+V��W3F��Q�}�~W�oR�*��t����\ؘ�,�� s�ulg�N7�8)��&�F�X�m�l�N�"'�q��#��#qL.Z*�RI �b���8/�a� �N˜�E�CD��D�2S}��툝r�ދ�Ϊ���F�r7�Pk��z��CT�0ű�#`P���D}ؙ�=h7�M������ss��cR�o��z���~��Z�t��R@��.7����j&���u4�K�("aK��S��@���@��*#�%������FAX�"Y#�u�����60����)�-p��s�FQ����� ��H (�`�������X��ӆ�Ua����&�L�G�l�}`�<\,���p�Ɇd�U��Kf��^���IpM�)�#<>�ȱ�ZR$�h��� "I@U�Úq�$ܚqϩ�Q��31<��JPh��n]P�X�c  ���.E���z�]��(�8bk�,3���8������P�P���Ru2�[������
��P�����3�i�O������:6L�ɕJynV�N�J"���n�K�����׻v��ݾ{���nz������F�B���rX#4L�:h��5��{�OT����Zt6B��]�E�OY����˭ҩn�ͽ�M�~\��@i�ܹ�}t}I�k���_�cJ�;`�0�3��t�(������X$Gysf	��:�+�V���Ӵ {27��I+NwÉ!O(LK�ս�n���c����PL�q�4<�Z<�N8�l�$�2
�"�@J�R��o .J!`|��KFDTi�n�O�������m��H�l E�>!�m4��M`E��-�#���O(�����_z�����g�omҔ2M ��~���6g?���o��~�8��3{�����,y�����B���ˉ%�!�e!M�6�{~����/y��.ó�P�($2  �/u���@/����-�����ZZnH�cQ�2a�K���p;JJ2bN#�TF��^~�QJ>`𿄻p����Jh�9"�yK�=`����`p}��(5{���FE�T�r�A�2 25�̈B��y	%	�D�~��T���g�0!�i����+ <����sofmX�s4V`��u=�{�n��h(}���.��r��i{}8��-�{�b㯊�|	���Kb�s��w��=�	�:�;�C����?� �G���]��c!��\#�ذo9�Ox��Jh�L1!����C���X�1�?,(��]b/#5ob?t�R�����<M�	��C�ms'�r����H/��#��{�{�WGm(մ 	V���{��ӳ�� �+7��~��� /�W��\��ܛH����Ĥ�R��N�2AD��I�*'���hP�P��t�NMM&�B�a�5 �FXn<�wզ.57b)���\��M�^MjR ~h�eNC����'�)Q�A#D�f#�� =�ZO���8|��Zt����&d�!Pc�!F��:,�*�1oB�H�h�!�z��/�E�f�\�$/�8<t"@�V�{���v�L2�6kx8���˼�[�M:H�^��UX9�%�D�1X/�9����rrR��@S.�&����dD���t�1���<^��p��V�o� ����qĎK����j�����0n�*��hcx8.af�@8�������́�	��2� L�vN�!mN�^�̾B�� �$�]�/X!�zU���P��� d�"H���AtϘ�4��v�'z�U�v��IJ�ּ�F�!��\pL��+Jd��LT` \�.�8[��!��aN]5�4�/�7���G+��Q���fs�����JlX�2�����x�oD�̝G�S��8�UE�)�*���߬�µ2�aFc%-�=��A�Ӆ$�	��0\��T���\ug�&��M_+�'Ge�������o1���{Y�
f�F�z��@�K�
)D��
���й�K�KU�;��W��R8�2?am1�ٻ'�;�+�8�zj!!�!�+�U®�+$����%PD�<e1��F�#��� ^��D,��)�[*{V���/b�b�Q�a<e��E�#�T(��&���82�6�44��~+�Y yL�u�%%@P1X��	���`VN�ޜ��j�g֓�-�RPD&,�mCt00a�c��,�de���~x~�GuW �R�R�B)."�C@H~����D`$�``)HMݽ�OV��|�)�S��I��B^�$��L���ǌiرG($`�x)D���4DAW�E�FD/�s!4Z���֤�Q��qF\G40���Rܐz�D�2��"hR��-I
��p���*�Tv�\	��:�0D������3o|	��	��
�<M�7�� j@��@7'�?8j'1�Rv�l
"��(N�2xx�*e�!����G�H
	�Nya��:F�$���� ň=!Ü�8�z����!/ �9��_�C*:A~{4��A��nVT搣���U)�(N�� S`�X���2�fɑl����X���\%�Bq� �����q�b:����s(�5)�	$`D�|2S���/r\>ܱq(h���"�eaޠDD ���P��&%�""�.�8AE��SC"���H(W��d�@p�}�� �F�m�<���t�)돴�����!5�����U?�fy*.T8��������B�\���/������ s~�F��tT�I��mܧ��6<}�r|����� @_��C!�K�ū�G?0}�NP���pD���9�[�����b"v|״�ݛ�l
�D��\�'/��s,��8�R�;GsfP=@Yn|������v���lf�?&&���!��H�8S�3��xȇBo��>ا�!!M$9r���*g�2���8����<��!�m�P����),J�JA$Z9:��&���{1��I��AoӮ\K���y���y@�$Y �=�x�4T��a�{�ש��h.�%g8YWAo�o��6�	���,p�|�[��\ź�臓F��x�"�Z����<�!R���R�B�#((�*�@F�(	�`��W�<yF��<G0�yΪ^��=�'�sSl�T,|f�À����k�*XQ.���a$D�h��*S),D�'o	�7_�����T��`�y��������-2�S�'�x�'�*E"@lC�K_gRK�#.�^B=�y~�m�T��C�Y��ގ��7������# �@�VF,$T���/��5�0��x`����r{��<�|����<�yd�� ��ud�����ca�ӓȈ`�%�
&ډ����Q	U�}A �$8�����\�d�M� ��n�!��j��s��br	��5rs��H@�Xz�La
P79� X�6�C� ې��b������F4�C�
H���0���X��|X��^ac*����A�A�B�{;��%\�j3<.n�8w�Y�c�J ���Nz;L���ThHL8�&-a��S�#�,u�1�P�i��8"���Q���O~�C�;�P�ՑN|ԳMHsH�Eb�:��������]@F����Mua`��l�uڤ� (-FD��@7�@�$
��:�.vm˜�zh��ʁq�
��Mb�Gv[���R"$�HX��!�A���Ʊ!�&�p�(��Ui�ܩAZ��E���Ĺ�X��7A����AA1�q$�	���j3e`~���ޭ�4�x��P�,"	�C��:{A5;� ��̺���]��VN�
mug�)$�>�luP��Z"�h�;i��	8rk1 �8+��f*nSPG��������VF.��r�9q���Q�jBo��6�&t`�@U����"+�� �0�������tBO]f���N��P_�T����P�*̉IX1��\h,wج)��� ��_}��F�cE�E�Rlb�@����L���V��lJ���MFN�8-�!f¸�B�BX���}�#�$F����>[]0�.l��ȏ��bl�0H�"@��Ȥ�WN^q�*)B�P(�a!!## y`^��6�.a�S��F1M�b�X�"`���brl�I��H�Il� й�5R�by�<����������WЄ���\�BP��!�"��"� ��!�^��"8��Z��:и��X�Z-I ,)�R ^U4z��{���4@d����$ 8���BG�EQ���+�K�B2%E�o�=࿼>O��� ���1�W�T*#�	����	��^�b�E�"�3 %�G���s�E���Q׵:Cm��"ນ4(�}U�N��E@�D�,TH0�'�D�j�r�0�5h����pj!��v���jR��_ �}�n�I �P;��CT}h9��+),�_
7��G�c��"�Av���-�����a����ޮ`RkP���ׂp H�C]>�/�\�x�7�K� �$ ��q�'��@-���v���$H�?��1�bR:��cp��P�ͻdǔ�j5��_ w)�],����`�PJ�}����ʁ=�T��|�[=^'��2�܌-�6��è'zÊ���/�-��R�;�Q���K��_d����b+4�0�������Gi��E���_�"�d��G.A��<�(]�!bf0b2X!H|�����K�'q47{�h�P�z���SM0C+P���k�gn� ���z�]jx��C�h��9$��[i,Z�J��B�SKH��#Ap�7�Hĵ��a-�ZZ��0�Qd2��rֲ7X$Lp)K�L�(1hV�K8�7Y�U���(8n �Z����b���P4@�`�"l��#���S�"挽�o��9o11����������(>�Pظ{M���m@�{Fz�y�|�A�F�N� ���8	L�	F�w-t<{Ŭ[�{��ٚ�(��@$&Ϭbu��Q�v��.v��4X��#�S�o������D�Nc��'ch��P>§0z4���4��`�-@$br t�c��X�x�������DgN���_'���Z�_ܱcl��kg%]���rLZʩ4�Ý�s*�Y���K ��B�"s���k,P��'�1b����e�hG`������!2/�
!�V�6(̪�
��5�.1	��%3�0���~c�P`���p>.fb��|��P(K��Xȅ�-K1r�h7x�s�ﰂ��n����r�7]T��Bm�(�[�v����k���7"h9�dWYC	A8x��
{��;��5�8��$�Z+"�zG��umT��� 30�,G䩼D��!eGF�L��շ��X��ԑV�"��e�C�PqխS(@��[���T�b�;FW8Umh Z�ɹ��Td��$�`M<C�Pj��Wp����4��������(U��Dd
��6f�&�+����i>lV���҄�+	Ǝ4TY�c��A�H��K��/`Rx`�֚������A����P��L�L�]��iVL���͉�U��ѿ��1��Q���2%X��+{�b�	����nٗ��X��1�ɗ��\�a�(4Bjg_��fwuC�s�j��5����+v�)LL,(򚃛��,��L8S!PJ1�ҹ��<����pK�P��X(1/�U�1{=�O��Y��H���+"�(�:��ފ��>Gy���!amf�?9q�L��h�����M�/j�j\7*P�d%{lg�H�,�(�g%D�n��WnR�� Y� qx鈾
pLP�\8!"H�"�ⲑ, �bbfo&����pNۘ���W0���&��S�hej�&�=��^!$�^�:][��Gc�/��$H�|��B����D��v�H��f��MP�2�	���u)!�v'E/p8��Sr8Z�����i@9�����I��;�Ր{x���z��x6��v�0�����\ NV�x�*7��%^���?��uߴ�����e��ϼ���\�^�hW����6#��������u�����=tq���R���s��m��G�G�z�S� ��J�T�2z3(,#��^ nG�j�#��N!*Ux��ɨpu�ip�$���;8�4��hc4��ؖ�7����hY`,'pEC�L�L�#ڡ,a `�#��2�tsI^Bm�s�<�M�!Z����J��(H]~����s"b�<6���Ǌ9�6wG���`E��3s`d
�E�2�H�X���T{ɁO���l���p0
|P�P���f��5�D�N��y�{d_Ck6���w���;a�4\b�@X�c"��2�����ɬcf)Ds��Sm�7�uЉ��=~��䪟Y�w���� x���6����Աh,#$	8 ���U�)T-O̥�G���{��5�U��?��M�N+`��ń%� ~��S�i����P{���T5� b�)�I�.��i+����GL�)(����U�`���xf��w+��B`nI4~���u�&�����ߣ���⧯XB̜ x}���R˻5d$� ��8܈=�>(���FW�N1�S"AS�/��>���
�E��3�������T"
ЀSJ#g͸s�4�P����ʟ�S�ҡ��}��^�v3/���C�1EUUJ��G�l�
��`P���
�
#�(��D@T�B+ֶ�@)ZAK� �����"�(H�� 