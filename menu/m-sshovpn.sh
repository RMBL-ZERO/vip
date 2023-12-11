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
BZh91AY&SY��(4 }���8�����������p�D� 0  `%~�J���Aw7��è���+5��1N��fiH�� ��rr�Y�T(w6�Э� ��
4�N����l��-�fjkUh`�I�MO@�b	�M6��I)�OS&�F����L���A�F�@B        &   0  0        �   � L 	5"��������=F���C@ @   �MBf�m��y�)�5=G�Hi����6�L�h44bz�bh��z�RDA42 �	��#Bd�F�
z��4��F����MԚ ���}uhNφH���h'�G�z_���қ.���_�l.ڦ���]r�A�K5aT�Z�>�P���MGرX3������CFM�B~D�?RqJO�~U&�c���nnP�r�����UY)��4Rt����r��k�q���]�J��V-C��DGVc���yT�8/٢���S*׻[/ӯ{7f�͕j�o�㹋a��0R���f�e� GX�ՓP���LBmK����@�W�r��=� ��}\/�Zi2�h��]	t1ph/������7[	Z��=9��T��jz֖.l)Jٖ�Q4VLI�Ff��Wt8ɦ����7?������\cH�񏍦߮WGS-���A�ԋ�h�p/�N2p���+Fa*�J�5�>js�t�`aV�����MS$�lM|��sj�;�L���7<�SQfG�+��"��Y��'���^�酂�j6�e1S3�ŵ��E���s����#y��h�����2��Y���p(�5~��0�2�ǚ���n)L5������e)UC����j���k9�1���3�v�n��n����6Rk���{\�ԢR������.���?,%蚨��Wq;yB��ٲ1��
{p�VB�������,i����\@D�`@
c@�K�R#o��&P�9���J7s�j͋}\hص�-/��	/���'Hb���֦���N�n��N';ʖ�y>?�K2*kS��_������{�x��ax�U�\�Ξ�]o���z�Ojp���,�x烚�v��-{o�x�1�û��dzm�o���ۓw�4���hcҫ':�2;T/½߀��neم�!��30�(� �֖�)H�-9.�����'{��^��s⯲3��n���B�3ܚ�2�m�=l��OÝ��ͱT�����r'�W1v�"0�:�0��$8Tr��HC��K1,������C �N���@��N�Y,�	�V/��	'�'P~���l�Ӵy����=�6�X���"s7J��d�&R��A����ҵö���j��aڔ�;���3��h[\�x���.�ҲS��{y�]I��E(��;iˉ��g��asSr^��\��L.`Qt�ƻ�����7��z�U��y���`�B��vR��VP�T�Weu����T22屈��Y8?`�N�6E�H�v�s<5ʤ�OlX�QI8sӮf�o�{���wJ�A�q�`cZ8�d���0�J���fc�wX�ɓ�/B�9W�}��8})-�@�5hG�ʳ���$��M1Z��z�#6�ml���r��_� ��F�?Q^E�e�2�����+�=d�{R�Z�<��ґ~seL,T3GIn�{D���(�')����8D�ӌ<�z6�LW3��)�(+�r%��`�t���]O2t%Ҳ�<[��D����Ͱo!�9����^�u�Ć�����
o�up2��|���|��K��S�^�ǋ'�>s�<��C��[��;D��9�#"s�,��Sc{��Up���2+1��ѰF9v'#%����)���;��~Y@�_���a��v��?/w���=��*w�:S-�]4�-�V��g��Q���/��8s�6��0�� j��6�[EZI�؆��<L���R;��ek�u���ӾsKjq�\��F)���]An�TZ$�Tb(��	�6�A�5�[��[����rN������/:�&8��e�Ao1�S�q��Lv��ܜ���*o���z���y>[�t)�:�`�Y]N��7��,(Ŭ� �Dn�_��z�'a����=o�&�HryVʙ8�c^*u];���a%m0�L����<:����i��|���1�v�+6_5�si~i%�H�)t���2m�[�,r
$>���B$E����� -��陒Ԣ�6w��o�FUS�ˀ�|�d9����UZ+Q�ff�q�[v���)Φk0]�>��ř�%
z�8�`��ެ!=�QR��):�N�1��$$I�<����)x8EIs��R���OdWW�A_�)Vd�8�DH02DH��9��@���Q���	���'Ǌ �ՙ���D�C�Hk���I >��I��I����F04�(�A�*T��T�ʍ-�a�5�0���'D,E��+�~B�WT֥2,��	%�)f�J��c4BX����0����QJ>,1���`�(�D�H����X��}���u(�G�jxX0��==	��~M�(��e���9��.0�=����{n*��Za���P�P"����	,��*[��#5����zI���~}�Q���r��j�a�D����$�[vn�{����qwfH�t(Y��]�������L�R�U�|t���>����0H|kz�Oiv������ =���%�bw��}'�7�k&%� X�\��N����~އ���O�Or�AI��%L]��,�'��q�W��I"n�x�W�)P�9Rwv�6��nn@[����r���1�5�<��&֌��u��]bT�Nv��Y)
9��T��&ӷ���=�~�g#�ƽ��4��?��l�~*{�w��`Q"��IG�I=�в���>�#ɑ�K#�m����>�~��iW����e�'`�����!���8!.�;ؘ)�}.���s_]�T��vE�>��:MR�2�xc�x��k5�K�!������N#0���t�D��h�F1�(5.�"�",@�R2�Y����Y̗��!P��s��M@��%�D{����N\^����n�3R�I�O�S��
K��)�峑���qn:�D��R|��	����1b\T�B���a������8�7q��O/!D�J��|p�J����B��j� ^Z���$|(zP.O zQ�&Y�F6I�����{����#�(psY,�IW��q�qr'����^y_(�67j�7m�"Aܝ/�W�O�u��-:�~�����,��JRSy�n�5~ƿ\;���������?:i��}���#i�,��IВ��̔��I�j�zxK]{��o6%)J�I�r)3�g��g&nDlF#Dʕ����mT�)2Mgi��c�Y)KQI��,�`-�Ĳ���M+
LRMcA͊h�9��q�?��G�1(~����xv��	A� ,k�T��3���s�/7���/�������D�G��s2qYgB����>���]FIq����G�$�M��<?��Kuxf���y�T��oH2wl�	`�ģ(� s��{����a_�o>IA�16��� ��ow3�"S��=zz��`�w��9=�5���)|�(Α��(�(���9��4�0�*��%)eٖ2ZY�9���d�١�[B��MBEL��/i;~�4<(b5i"!�Q ���ro@|�	aX_z#�B�ٌ*1J�Y)��>)E�;�������G�t&��f�Q��O�Oxz����=O\��u�o,�]<I<��	�4�$����� e�I{���B`ϢN����+��"D�̝5C���}f� ,�L�KY�!/#�6�y�OH���@|i��{�J�U�-4�]r�ӈ	�su�1Ju�%�>��
�����,9(��~q�G��m&E�9��yh5JE����
�8!�b����8!ʞ���N���wb���0�:��t��jjd��N��Kba�[q�Ku�sDxU"R�����s�C�ѩ;.O �Fn�ZK)N�!�5TY��At��{YxL#��(��0��JV�[�ɵOڶ1��7�#�$�5�%�'�'��u̵��5�1I'5$��X�p��OHf�(蒵ʺce�9�2o�����ْr��-�����R��NV5(���:�g���#T�M�H�Q�OECh��^ю)��Ж-�Ν�(�����
R�V���I7� �i�M����UW/��qb���QF��Tk�Z ̞�>htx�l����J�9��(��K����0���;�Hdk-e�QJ])(^�K���`(�F�����3`�4<p��v)�	�RR]�d�	~��W	��E�"UK��$�!)��p�T-�w>t�l�_�tR� �0�����r�Y,Y/;$ٛ���3G*kɻ���%�6�IÏ��S#!M�7�zJCR�RP��ĜY.����&fKV�Z�,��<�U9��4om<u�K��!b� n���D5)���E��ɋT�ޥ�Q���ϒ؅�klb��F�yùx�1�"`ܯ�ԶU:�&��Q�&K&�Z�M�2��GD7��r1�f��Rr�'�P�S��B��e&���#�xR�%
OJZ�:��g�E�5
RG�TaY�����*.K�	�{҉;���AA�5��1(ed+���,�Z/j-gۋ��Hg�0`@����mv�=��Fz��"a__)�&��	q�����,T��! ��.�}�8@���Y>4��L��Ԇ��G��F<�x�$9(��A� �a�|���
񌮗��HX��C��u��K	�vv0��N^I}��$�����OBzP�MI��%x\�و��==C���FH(�0:A���.�u�	�E����.C��q�:7�ghs&GZʣ�W�`wC����k�8��~i)%T��X$�7�$i�RDU�$�c��ԗ?2kw^Gݾp�!����{N	q�?�`��B�H�����+q[�ҥ��������M��_S�(����cTdb ��"S�R�5G7�C�t,o *n���)T�$�'��d�*�+��</I�o��Dt��":���c��I�E�����߻GYʗS�c�ZC�޻��/$1ţ�L�Rd/UkR�;Z�ܲ�^-�-e�To���a�6���藖����Uk��**�썑65��""����=�_��(muI2��(�J��0QuJ�М%�66�s����%-��(��TT�w�}N�a@���Qy��pt��1
L�M^��Jc���ԏV�;�JФ��ж�Ѳ�D_����P�P٤"�'�TJUR�Du��W�! �
�PP�`��1`�$n�������"#��\kRma1��="3�Uɏ���"�*0�-Ʈ�	}��DN�L�J��EzC��'>K+�)�G8�M)9�M�����"S8�Qa�{�$^�1��TV��X/�)��m�9!'4�p��L��=��w�8uQz�(�K��;�!��R �J�%4P����k h�4�6�����^qp���	t��gV-����;�M�yi'�<{�!�j��)�R���RUIi[w*G,�¯ʋ'l����kل0fԵք��>v�$�|�q=C2>H|�@w0�0�&��޸#�h�W���x"��uM��?���FQ2�������P��䞨s����H�J��T�S	�}��#���g�<��D�̒�M��J�G��ۂ�F�)@R(�R�f�:��ؓ���Hݢ*�WV�����N'������qh��n��������u��OZ:�>T=$��buKMQ^�H����Y�à�T�B�F���UU$Fn�7G2L8T�#������Kw
1��פ�X�E �H����S�Y\�t��Φ�����;�8���;გF���Lz&��2�V��j��F����^"1�N�R��$C�W&7��q?��qmM5e��м�U�d�Dj�9a���j��Q�i��qP�yv�*IY3���`���&>b����ai��,ΗRE�E��ZT���r"]R���[�c�Ŧ�	����Ɉ�,J�ܔ#)��U�Р �� ��.B���5�I��2�o\B����n_���u�<Tq)S��M���	��m�Dt���T�4	D��
%˖��H�Blc���3C��A$t��xE��I��*�TzQ�Av)� �Y� �U������]:��crD*!Q,��P-x���x�}:�d�+}��#�ȟk��@��"F���ԝ�iD}�}�1%�]��5�BpL��G���DJ	
%d�
z#�M�"�@b94����r�D0�����~��_��;�K"a���̔�=���D�Q%�!`o=M��;�b�qS���:���"H��%�Rx��F��Y�09�&�KT����$YI
a�X��$��<�Ki�QB�ԅԆ��y����^��J� �Hk�:�/A��<��9���/	i��̣�F��=��r����KH�S��xjϱ�Ne��?�==l�[]�Um�S@�a��.�ժ�Le�&����~׻CSl�(X�j���,�M��.;�=2�j&hC��(�r,"8��e�b�
�H(�!��5���e�RQjDE�FX�4�
�N�9�$ih*��2u�y{ޱ�%��۷���D�j�`���)�,-CY�,���F@7�m8(�A��l7 0���ۄ��jт�LZd��K���(��;�"��S ��L@H�L�)0��U@ƀd��Bg�������BH"�rDNU�^���T�h�<�(Qĳ#��Xp��̕c|3�OV��h{��GV�IR�U�����Mͷ�8���-��Q��hqef�r+��L�����)�8swɢ79?��=U�	�-�.��ju�x�4g�$��r�5x���a�W{2�8	E�0�5
Sۥ�[S4h���j��=�ו�F#��R�PP�6 F���J���	'�'D�FP�G���מ��T.�>����$Mj(x�4B�L�1Rxu�m���*�4�D�����Awv��%�B�e��PQN�����s��*Ada㤗"t`��_�4I�m�J�N<�z �@��*� ,-��Ѫz��"��R"1�&ڀy�T����� ���@T�P � *(��R	O� �TB Uċ`Z(����D)�`"�D��Ő��$�!0�y	hf���" ZD�P���F������ӕ~K`x��?���d �R*����	����H�
Y��