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
BZh91AY&SYy��� ����  �����������p�D� 0  `&^�l�B�+Y�
Me,��BE�ƭ��4iKa�Ե)�
(�4 *�@�"J��+@hP
E��"D�D@�H�	�zh	�bb�F)�h�*~���z�����M�=M=@m4�� �               �8              �p               D�&��L��`�dѓSe4є�)��#��x��j��#�df��" )��@
yT�Sz�Q�'�OI�I�L�C�M��?Tڞ��MC@1 o��xQa@����(�\.����t�U�T�!;��?����?u�:�B���'3{l�
���x��_áAx�YX(���y�r��&����|�{�54�\����b�)�u�X�(�:t������^d��n�����N��g�2���r�aHFg7~��3Ï+Iˏ��l�\$���~�m���
��+P]��/cj�[*��蹑A#� ���v��hBڤ*��X�����r���)͕Jn�pR|�;3�]]:��NX�n$J�:arE�{�n�V[�X�ʻ3�1�f+��<F�g��e�W�ʱ����ql�^�6<�?Á���ӷ��t2� VY�aw����o��Y���U�r=�Ӈ
���������;z\'�(ey��6�Wj����J�N���|6��6;(��ۅ�5􋐶�*��$��b�p�{ ��Ҋ m]��?W��s�z�nSc��c@?YFX�����.X��o��w���;	oI0u6=��aE�X�0��F�,,�ir�s�_��>�|�t�9��zV�Ɨ�S�}w�3"�at�-~���?Zn����|����/�B�c#�(�B���W\*����%�0?|�(�%t�-�eH, .D�H-J_*-lR��k̂�f�D5�b��T�;�]$
�h��L����1�8�Hb]���������n���<��}��@�6���X����׸Z�����9yUL�'HO�!�.J�,Km y�� \d@�<Ц�Ba�~�P�S�g
-g��F���_�l)�E=	�MD�/�L}�<$3�v��?b�c�7
郋��(�"����f����$H���<	E RR�qк�R�<>�'�@�?g�S��rC O�������_\P�r5�	1P��uP�t_#\�ӕ渞�@�p ��'OZ����L'��kY��k�^HB%s������p��>�:�ҡ�n�y.�z@g��֪������-����_c`���ct,�B��V�L|n^9�fO�e��GS�^8$�^G�H&�1�
�k�f֘����$����f<#��P70���e�n`���r�+� �L�)<�3��{v ��ؓ.l�_>d^nY�H/�qהj�`�X~���.�Z�b�24�$���!���oG�UWu([��/��*dI�J&��N"���QNo����=���'F���3+9�	{����ַ^�ґ]jp�[2��ɐ�'
�8��"e>^Cu��R�rql<�,�.�J��JWY�����4�E:L8�ty�p(���NzL�v�skh�'�C
0%h����d��.�7s�F(a8�9��fl����2A�����n�(c ��m6k`F1$X�,�^�FC�5�J&r���uĺ�E4�a�s
"ܓ0��jE�>�5$�6O!��e�|h�{Y�d���S���Q��&��ч;B�W2�]���
2�q��Qsˆ]�#�˵n'j�R[��$���!�x ⻔ǐ���x�|�+Y'l{{6jTʑD;ڗ2 DZ},]W�k�]0ʧȮ@� ��'�X���}�w6ޭϧ��v(�4�鐐އ?�]`��jعpN��w]�p��!`T�w(�7>��4`D@n�z���G��8P������4Qz���ˮ���zN3t�R�E�<[*yϏ���4�hj�҈~��? d^n�.���\�?�t��Y$���h�X����v�Y�{���/���o�b@"H����.��`��).N=�HN�ć�ǚ��b��rym�Tˏ6��h��]�jg���Z�J�-kr�����;C�"�c��<qy��"��b�`���Y�X�DC��W�[��K�8D�1L�a��ǗH-��� t�`/p�Ă\nB8	����X:��h^q ��A}�!c�X�L٠��y�=��H�	���ıB�L��������D;oB�-��}��Z�	��	J�)+�M���!߂7�xSrae�ZR!ݑ� ���	�-dl�C�\m)�0�!K�5R�jN��\�$S���8Z�--�0q��%C�!q�@�`
(H��[�*�6>�?Q�!�9�� �d"`w���0|X�Q�5rI��ULU#
�Cߋ����h�X�PP���M� ��G���˜f�C�=����{�_h�<B�K?0}���6J�0+e��B����G������o��q-��� �y��.HB���;Li�Ir�	�.G��11�D0\ �qk)�a�ϣ����~}A!� b�}Hn<HC�O�.q8݄[�y=r�H	�}���Lp[�H��x�����@�;߈ޛ�
����Ï�Q��4�]g)� ���=�h�]��$��az�ٮIX�[-��q��+�ǔ��k�ڦH�������(���ر�2���d���aP�2B��n��p�@I�@V���#t�ׁ��Cx@2_���O�& �UĥmE�����ӂ�w ��B�E2x��ȬR"��Ҩ�s�R���(�bw�$��-ǂ����ۯ�rB�S)�������"�-/�߂k�x��z転)�v��l灹=v����/2'��4\�(fEј��\O��.���? �i�I"����qp��J�H��ҋ�O�Y�|#�v�EF�Q<$�B+�h4�9L��������a~��̫�Ml�4.|�����`�5p�t���*�7�X^s$h#��6��u���=Py��F�3(@��wr�J�|./u\ޘ���{�2���_�����ƌ�RR�_8�V5RIMVD��C�j?)���}�)e�?d��Ҙa��@�_��[�׍�-Ttq�w�9��+���될0T/���XWV/_Z�|'�6���E�ɑ�fC4�J��[�)�)A��@�:�+)N`]�o�v�����O��?n"�>��C^�L�8#��L�ِZ����[�������G/�ٍ�+�ՋT�/�x�+���6�;��^-��l>�M����.��i�r�~!����<�yJ{�ED�)|�� ���=`�\; �H\���[���p������)�Al-$�"cH� �
��q�(��1��+����24���R���Ѐl�4��%��xO����$�� ��P"��������D;о�b���_5@�FCRM��v�����?�1���S�3q�f,���U�߳װ������8n��0s�tҪ����M7�K$|^uBx�*EX��<K%E��#�v�n$��T�h�X8��Ų�� �jW!,�\�V%� ��<��_~���QP$9P<�*��h���-?���p��f�b>5ԍk��|�./����"�����y� B(�������S�"�~e�� ~�[m1
�qZ�P�-��b�6&�7�V�i��26��k�*Ng�?���Ӿm�_���)��0�q�J/�5QHp���]���찈d�������;��=s��((T�"`�@0>�<���0�]0��=��y�'��䢅���,��bl.}�mܢ����2�.���E*�_s�#<U"�wwiو��HhB޷����B$��O�h��C�B����<�7��MN�Z�C��CxbQquQM�pޛ&&�EpTT�0�:�$u lPQM��]`
phJڰ�m!��r����˔/,B�(C4U�Sac[7Bw���.#����"P��bzR&3��Ć�kގ `����v!լ�� d���к�Hx#$�D=Z�{��x2��ɮn!^؃T��H�M��øm�X�;Aw**t+����8�c&mّ�h�;�	�p
�`?�p)��G� K�0K�F[�����e�(�z�ͱ�½B�0�7�f��-׺��>B��T�N�1(�H	��o#܆��nt�h,G"�q��J�G  � s�ƺ�Q���K ���N@�Ӭ?�Ծ�h;�{A� ���l����� �z�EۈƊ�#�r�!
D9�+����BO D.�V"@"��R��в�B�[�	$ "@����"{�}7/�T�T
)^�_��	����t]��#c�]/����Cȶ��H0$# ����3���6�Q�x/���_-d \�������!`��)�����'RZJ9=dL�H!�}TR~j�U/��l�xā��/��/V����Լ�J�[4�{06#�|����%��͢s�<��(t�����W�n�b��q$H�zK�J{�ʳ$y��{�0<���b�ԈGq��2�G՚v�,�����"(�(>�8�q?#�wxQ�3�-��)T�`�X]��B�Pr^M�~�"��mPڱS�8!k՗y��S����?��_?�z�9�������å�/�T_�"
����8$�/�C�@�8����+�M�y�+�S������$A��02$���E'a�ֆ$�U��-�@����N@:��.*g��J4�qOʘ�u}�3�D"�Bq�)L	��C1.�ar��ΎiÇ	��&�\,���i3�@�-i4K�����;UT�ر�P\z{�S<�/t��1 
��`Z�RJRF��j8�rե!U�roN��
�Jc���<��!KdJ�g���0�D0��l2p���3�Sa�[����&�7!�I̪���ް�LTʦ�T4��(t)���A�X��( �~�f��Jh��q� �>,̈p8��y���H�F	�Io����M.��؈m6%������Ⱥ�����!Ca&��BD$@M�JH�3�A(B��g1��X�D����m'�)VP��Q�UDE��\hG :��|���a>T��"4�Rs�����-IT�k�M
#�) SYQ!Q� . z���������UIFB�]8F���z@�V�(��3==�-�b0�Ot6�:���!# ��P�hCR�8@䘅0����ReP'��M�[)�ybm���lm�DGgF��_�S��~��>�̀����zW��7�V�b�x���@��]uR� b��! R��B��~tƓ<�]:{�����F$@�����<z���h��UUQP^>�Au3�TFCl�ܝo*
@�U�-Y�p��N��b����ҡ��K)�ap�E�RT��<z��၂z��ƫ�qL�|F%&bB%�����lP'i��,�A�1Nshu� �2�d[Q�@O�FF"'PtJ�Wj�[����{��np$B�	.m<��T��2S�0�C���ruL�nE;����v��}H��.�5��`U۝Y�ۊ=��ʊ���s�l��
���0�{`N�w�Gǩܶ[��������'1��<���4e�Yr�dsR��WƆ�(�S%�f��7)��ul1�+��`���#�#����` d��h��Խ�u?�&��	��BH�EJ�B�,�Y�Z���[\.��P �e+r�cd��B�Y(`�nCP2,\�!E)����BEˡ�p�
����
��D0NТ�Q5��Zmnl۰6�#d� 6ZD��R�����(,^�iB���$"�g�zDDlְG�'~����O��QC����;�G!�����K �-͂�x� Y4�-P&� ��d/����|1�k���}�nh:�}U`�A}��w�`h�IB�ø@��kD�� �+�PBwI ��V�X3H�0�0.��/��d�8�� ���{�vM
l�L��4�Ӡ��N٥�^��w���ӻ���� �(P�d�P�/��	ċ(�Z1"P� \�
\/B'�1��To�\�y 8��5�C�	pbB� ���������1[����l�8���6T7��\�EܥE
H@)�Ȼ��H�� �B�+U��PãqB7	4!VE�������M�!�	@si2�|�FVQ�h���#HED���ڐ�:�  �ҷ�#�K���>R�拱O3�]�ȼ��]� �g,�"DaI&�@�E�F�)��f�ĤOx�4C^�z��%ȉ<�����2�v�eJ���
�'��6i�(��,���EM�2�.����u"jat�r��r���Q��``\ۂ�-��8f��(�l4/�dȒRQ{��Y�|A��:@?��E� a �b8 �����(��u4�'kew�+��Tƣ�d!!d��O����ڃX���X�@|�E�FF��^�� ��h\3P僋]H�@�'��C;�v���[W���Z#�%���vu��9�:�Uq��Y�b[���R�b�����S�"��^��"�9sf�N�-;hd� �� ���c�@K	��7�!�I聁�ǒg:�8��L�x� ��ׂ��}~��#0)	�rL�����e�hn��A�:%�"B% �����'b���I4җ��Kl1;Q�1'1�~�����*�2���$�k-[��������{{T3P�c� !�*x���/�O8�m�������� �H����xOe��/������h��Ol�I$F%N���KH*��۸<
��R��.WC���gb��M��u3\k���Q}������	�Z�B�j��x��!�BYZ�<9+��GSy{���S����9�@0HC��:�C�{z8(`x`	����[��hV!��>�R  �}�@�(E�EUH�@���*}@���xD�؉��p��Q��@���A��ԑP�$� lPO�U]A\�JT � �. ��m}���,r��X��9q����"�(H<��@ 