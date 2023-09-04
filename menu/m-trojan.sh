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
BZh91AY&SY@*g� ^�������������p�D� 0  `���SF�uc��vAUz���%��J��ց��� R@���@�*��!PP�$�4%
)��#�<���&OT=OSOS�4F���� �i�i�i��i�H&�=2��4I�i�4b220����@��4               �jQM54�G�  �  z��    4 �"L� ���4��2���ߢO!�=<��=��=#�z�S��z�j���ifS�=��	� ��d�i�=&#ԧ�=2��OM�Q�M=G���ߖ; @�6�!�Wz �#1h�P�RP��`0H��6�����'���Z?:cp�T�i�i(�&f���A�L4�gN���kq+�`٪�-����B"�A����|��s�T��H٢ƕ/L�t�vp�YuJt�K��}���ֹ�{&u<<��1����nƻ�s��)��
!��Z)ƛs�d��4e����ɏC�K�
�lչɞ�߅�Qش��X :��.EGB%�LĂN���">Z�{.ݮ���4�t�	�k�a���0ы}n�'֪
�!'�������M)|'e��N�N�B���4�r��T�&y�ѿ�-�����3��zjlR����]��̵Uf�۝�~��O�"�\��UV��;A��~{	����H������]�:��CO�;���e���m���vE,��&R�Ջʲ�1���瓉��Jug�S��֘aC�\���B�j)4N(��� $T�J�C�C��_H_`�@qA�$ �-	�G�#H����m�a�S�XX2
�F�2j�&4�i{]?�LS7���x���Χ~>d�vv��]Ƒj&&vã�Ĳ�|24r�q[׮݆,�?�w�g��,���ʇ�,!�:���vX((#����H�BQ����*x�>܇I�z��<�vS7=>���/����z�=1���*�����S3�ET�,�,��6�	g������H�ə��y���]e"��AF��}�X\؁���M�N��=��]Z]��޽�X#�.hv�Z��F��H@����E{�SF�w��B͉�~�K�ZKRs�E�}���Q�lq�1��M��mGp�}X �����nl>l���RFn��z�;�;V[ɧ�hY�o�O#�1�q�_N}_O��;��7�;��w����?e�����}��o,]5��87��)�Ʌ��k�x� ��)�An���\�;�Dl��&xı�ߺV|�i��P8���0�	���Q��*Qc#/^�M��
љ�%x�g*��]��c�m��v����u:�N�t�w����d��3<w��$�-;����<��4���8���$ ����<�:`�{��汆�c�&RyP�٫�ЌQ/>��Q`�jn�CpMB#(�]XK�q������"rI$�����n㭟k�����Q�aе��Ęsn�n\e��$�nLHcm���ǫ-�Hr�md�}R*hc�'"���$��|u�Z��Nd�"��c��GI3��bl�!Y��6�����������ʊ1l�ݽT��;~$��Jd\a�O%v20�."�ip�������r�wOrsP��u��Ƹ5�#�)�/�ЕU��Ak�a_y8����m�Ҩ��;,k�j��ZԶhdEC�3�6vv;�(ㄝ�-z��Ό5s�Ԉi��tt�t�I!U��x��9�l��!�D�e�*d���u���Xq���$`1D~���\5'/5�砨�Y�4z��p�(Lt�d��I��Ǥ>�a��>�*�'~�)&5_��U�Xtɭ5((���n�Rj"?�#��b��K��aAd0�m��%�%�ۖ�K&j_;zװS S��a	����`� ̤��k
K����~��Ի�8
>q�'I�?�	��俓��Y��'�d�t�ߐǢ@�?�R)�B,�	UO�X��,b/�vx�B�{������!��Z�p�z�k�G�,�6"��T�%�<!h-�G�]L&%��}�gt�0|�����ݚJ~�4�8?j}c�J>����<	c|���椆�ݜT{�e'�"�Nk�
$�sZE����'Gъ �$�R4y��(��u�*q�E톑��V����,�T�nKv�K�7�G��r�K�!1G��̱�G�'�����(�J�Z�ˀo`v�`��>����]x��A�*4���*I�P��T�]����RH� ��Y��oWT��y�aR�*V�U�!��?D:-���8ǋf�8�x�蹪;�����D�����W�����c�ԗ�O�MU)M^�_73v��|��7���9S鷃�^�$��I�'�z}��l�b�q�X�<�ħC����9�C*0�J��}9�b�6�tk��ً6De�<�O���37�f$G��kXx�* %/.�e#�a��.y�ϒ������*�UV�FNY3�C�$�i/$οj�VPc�p��&�M��L?^��s~)�dF�d���ɮN�l��͍�e�r�����F�}��`^��aR\Ƈ"L}�Q�xKZ�_".tS�2�h˶�y����p��,�����'�L����� Y~6T�<�������X?��,�Jh_0q`�=��)��c�:,���Q��&��Mu%�r0o'*�Ҿ��>/���}��L��*Q��{���옹]ו�C��i)� '��ʤA����PS�C�B�{xt{�8�+�҃�l��m��U�Ђ8g9����D���᤭��V�x����=�M[u�<-xE�� Ñ�D @�Q�@� �BX!z��A����0)R�J���^P;�{g��[����ԟ?�:�d��9��^M_|�
ڈ|��-�é�R�@Gݒ��&ّ�`�����6"́/y"Y	/�M�2���$���#������6jÉ��Ƌ+O�&�J{{w��;�ne���=M��c���'Jw�?=�I�o���ޛ\�NW��b�Rri]�`�ϔ�|&�.����������8��˿��5$Iۮ5m�Z�I~�B����]<ʪ�^a��q�T�wXk�8�zk��;_���$���Lz�)淂�v�G*[7���1׾#=�������&$��1/'�t9�X�s�D8nL7IzM����FzT�]j�]�H�:�(�Mgc;����.h��	�5!d�O*�8���<;#�����^9c��Đ:�\�1�2J�J��-~�hvda���T�)��*���RR j)����׮���<[F�:�����ũHy]"�UJW%�߆�����E��oh��L���@�z�Q{����RR�V9�S�7�֓��c�h8�p�t��2����Or �G�0D=�kѹ7Xs����T�Ͼ����\�#��Kr�f3��M��T#���al?�A��*|�Xw<�0��:���GΖd�ArB2��	��%�\5{��N�'�LA��~Y�S��=�I��'��}U�N�o��,�?��~O�����N�G�˹�Ì#�˛��-_M��?�c����G/j8�햒'~�����K?p��$�U'�K��ō�m�G���:���S��l�̗���rѬyP>�FS��s<���+X�	�uI�J������T`�V�ꕄ�',������<f��}��0��uH�ew�`���'��e�[��b�f�ת8�6�.�-���"&B��)��ڢ*!+���Lp�;��:\�D��e98Hp��KHڝS8M��l�d5Q%խ��Q9�/je)�mݺ�6���m��깭U���U��]���G`�16
Qw>�<�]J��l�縅��R��w�a��ݑfB�W�*҈��`�D��P�w(�Ca�!j&!��s��堓K�E�g��ly
Qȋ,����ْjMG^h$)T�G�<I���JJ%@�
B�ۈ�����BH�@B���UR��@�R
T���X*���6�"���JM�&�[����5s9̚�3�{
���8�����I�lNid�W!�ø�6R�A�I����
�f%�,�"� �.�9��"�G�0��E�T�rX�ϒ��9$��2��f�8�z���<@��xG�5�iGyR�MR�С� = d���)LCGJ�T��6+�0�����C���a�Z��&�K#��x���9���w�8�:U'�wj��0��]y�q�D&�6'�:�}��Y��C���I�K�~H�+��LQ���&5D�`��*u�s��ߋ�,h]a� �l?�b�����b�}�Z'nj{>��Yk*���П-I5���5�uH���^���a���:>Č�^ɷ�=�4~��L��?y*eT:�=G���I��9#��f��/IJf����UY,ȳ�kn2t��̴�wa���*R�6:$زc�<ìh�%�0�.���G�@�T�M��HjLf�I�NEH�Ny��\й&��I���ђ�d$�z�t����tG�*MƟ��^_�?����z�tT���n���%�y�H��"j�<)�ZP�f0)ɡ47H�)����,��r!�8��C ��D�Z���/.*L��K0�H]ye�	�&YB/$�$	f/.A%���/*�%�T/X+Y��$U@^) =�C����r�:Z�0'�a�Ԫ�՞��eH���ȍ"����W�=H��9��+<&�#�|(�$��y�xl�.�\a{e�Mn�u��(��ild�?B�L-oNX�vn��8I�~Q����5x������F���Ӓ �z|Kl�9�ƣ���QsDT<a�|jO:}��wω�8	�OI�2����Ș�ۙ�N3)܋�9�q�`J��A��B,	ȁ�Z��iu�&Ir6 ��Q�h�!!rVDK�jV9� %�x��ry)�)l.�tI-Ш� Puj�Y�dy�H����Ӝ�o:3L�A�K���)�4��� DzvHݹ' ��ѬRT�E�����q�s卖�*�Z�5��x�k�QaE���S'�yՋ�Y��/4i����2�S�tr#H؜}����J'B��}��*P��J�0+����SV72^ y�i٥6"ј5�,÷
�b:���a77���9�6K��l)��]]tŅ�*�]b���Q0V��Y.�2�XɣE�-�Q�K�]��z�(P�*D��D����+����`��:Y	�ԏZi���C�l7�$M�c'�M_
&��� ���i��[�fO1NԢ#��R��%+a�Ŋ����4�2Yy�Ν�u�0;S*�N�E����vͽ�k4�̝�tk�>h�ya��E��O�"��sɁ������N�J"5Ժ�N8��h<O2���2�~2f�:�Ġߒe0��*�eVRc'�-�����%7�|�}<4MQ�`�7 �	�Ŕ��`��qA�XZi%�xܘ~�ڎ�@|� �I��~GN����y�!E�	ǩ�\��K6��U-KHiUB?�BY�b�5���OBƜ��h���y�����J��5 ��1���}�\Y�EMD����@Ф��_���
��P(V�@U����ȇ��*� 0"}�`% �
�" �x�"}������- �� ������~����X�W X���.�p� �T�0