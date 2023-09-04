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
BZh91AY&SYyْ= �����>�����������p�D� 0  `!�{�+j;�4ٺ�����^���o:Urv�$t�q;�O h !�rT��H�������F��j�j(Q1�S�m �ڧ�T�i�����<��d�B`3T6�PA��bi��!0	6��       44   L  `0  	�C     ��d$��b�����yL�Pdh� �  ��4   DA22i4�2h!���F�M6��OҞ)�SG�)� =4��Ѣ���P*H�h&L�S#CSd�Ԟ��jm2j��G�z���4��hѠ� �s�A@
��PX@�t�I,�JFTH���M!1#�3�U)��������+�ˢ�f�]�e�-֕�����=Y*�)\�>�Oy�D� 4'a���Z;{{�Jb�t�iNL/�5�nα[�&�X��ʯM�//���v�[&/��y>�����F�UI��{RȺ��I�ڼ+�V`U��"89E�>"W_Uf�nec��T�`$�.ϩ��}
oS�}.���s���x'�pͫ���:����k�Q��VK|ۚ-��j���u0w��:bA4l �}!#R���y=��W+	5�1��@���aX���Ј��d�u���
p�ӵ�Q)jJ�@��R�+xE�V^�05��rFw���!@�R�Sy�a�+k��³��,�Pf�V)�"DԘ1��o��#��Q~������� 	h�N���3���yN
~Ŗ4.� �:=�oۡd������ű��I����_�gfG4�/Aq�+�(�����p������S�je�l�i�Uԭ��^�x�3��K����<G�à��F�t��	��5��tҦ��Dj��b~'��)ۭ�~g��<9'��_\�ҟJG9=�`��E)J��h`��ҢH�kv�Qz�Y�g;���C��Hэ��c��(���h�LoX�(�qH`hJ˖�������9^@�Z�\>�Թ�~�i��2n�p�"u�-*�UIF.�t��u6=��+�9G���>3��}W�$��x���SZ$|3��;Cq�*��,�T��0��aP���ja�������|�@I�5*�l#�b��Φ����f��y��;���٪.�P����f���{����ȷC[\U)������'�(�%�)$0�f��(��$��X��4��['T��Di��Sn��1�I77�*IJ9��\�qA����N3�x�4�|폾�w�ҷU$aQ��o�:��ʮ�Yk�xS��gp�m~���g �0z1�Ne)O��2�0ON�5`c��//�R�}B�X�v^�-�U�/��|�`S�[����B+���'��ο�ߛX�y�S6�lb�ry��;��|�I��&ɚ��fU9�kQ�Wdt��V\�dC��3�z����:&�Tyd��ɻ^ju
B:%&��N��SN\�,)Pi��ŜV�S�ʃ���>yM3HY(~/�9�̩0X��f�=�c�"�F��mQ�/\�s`:Qph k �"6G�0<<������C���ξ<��j�����S��\��o:۶��ߣ���-ܦ��K����<Ͳ��[Yĺg*���Ş)�F`d�ѵ�i�|��"�"����x�q�<s�S�v����O���-�C_\�����N@]8'5V?0֏T��������u}��0|횛U���<Z���D�\�Kx�B�3������~Sg6]�3c��`��UK���N��W���IA�fٳ#w9���c�ӿ�=BĐ)ղ͐ \�W�~f$P=�B�����L�{8~�^n��Z�������Ir��;\���d�M]%�v��I#(�Q�A^���6=�����ldf|�qDn��~�<^w��]]ߕi[9N?���Y���ܘ�ޓoę��h�^1�K�9���DF�l��9��,�m6�gZxԨ� �b4�8Š�8�1#[��j�x�c-M��26:��F���7$t���C���P�T���G�e��$�V��L��	"��B�~���j��2������<��5�~��^E0Y�{^��!���̧��ɂ�;U���R "�����Sp ���u��̈.I"&z"�t�	M��w���$]N��b�d�ʂ�*%)
�G�Qe�Ѹ~C���}����L���'�s�"@�-C�TD� �JkYQe��!��`8�Q}�H!�$X�C�Tұl�<3d���Q.Te]��i�V#Y�3!B�C*Å��2Y��1Z�TXvbcxHÝ*�o�X`&
��d����}��\��?"�
�(�^Uא�UI �l}:�P��̾?oR��B��,;���������P���K�iZ۶�и�Q���SM,-��L¤	�Dh�H�bր=$-�	rj˗��s�������1�zK)�U3(Ɏ�H�p9�،O:0����/��r⹄"y�icD���N,H|5Lb-}C�+�5ˣ)eq�,xWm���?|����|���m�2) ��F/˪�K_�?/�r���d~:8�|cd�D����{�o]�z�؋�ܞ��eHd������ߵ����<��'�bfw�&��h��.�`��kL�|��X��ԇ�*��P8�%�;�1�P"�I 0AC�A}p���i�G~'�1X�z�-�����l0��JxYue'����Hv<t�S�:X�L�.�_�c:.b�8-�:��2s_W�w�#�vE��#J�����0k��M�PF��y���~��w[�L{S9$4����)JU)2�-��dQ�j2"%&�����SRr��<\,� h���R��T�i�����S4�l�>FJV��	ryL��I�I�0�d��6�)֧Ci��!t�S�3�ÝELX�.���1)J��C;���B��y��@d-f��F�m�I�d��7��K�?Rn�j�?�Ma
�駅�C$.���	��q�v'zsx#G�J:75�]�Oi�>�ɿ��ux���56hHٯ9���Kwׇ�\d����:,�,k`�,��&����c}�c��r�
��m�@���bj�I�g{�%����hoR���w��Y����+N�`���cnaK�55�1Re�ˊ�Ҳ��KJ�TŋʗbɁzb�dd���j�h@H�)D�RR1Rqil�h�L7����D����0�����t�C�1`�2�f����.ܳ#%Y�I�4��ɖņ���� ~C��TS��L�UxݮbC�h�V0�08L&C��^�R𰙈�FU� x�!�|���/��E sp����p��>7ȦJ{
dhS�Zݵ�L�c%#yD;?�z"��:ߚ�|�Q�v���l������$��";Y�D��9��N).�H�B���2������`݌�"@ۨ.F�2�"�s���f��q�&a�2
'�0d��%ǬA,`�1�� �A�!J$c
P�.0H�Ħ�'�퐄!�M���������ņ������m>�ײu;�S.Nl�"ws~(�"�a��R�Ȉ�}R�5�3!�l���IR�R�������_���mE�R�H�D$��!hH^���ݭO}8p"'A���ԕQ���^q��d���*���]Z�q�H޺^�����݋�i�ĳ��j;�q���x�����: H3���dF餉�X�!�<���N���`�x'ُD�6Kw���b�1s�T���3�� W<֯P�$O�����cML��f�$Gs\�Z�+<��Fuq�\�&�����)-s���i��%+>�隻�ҵ�1�
J���)�ٴ�=:�0��{�ɼm�h��S�,���Z�\�Yg����lx�ͤ��������$G:f���&Ig��2���r���'7.*(�%"��a#�x��gDf��(����7H&��di�SU�T��_6&��&��ЍQ�Ih��G����@�	JP��Y�N[��m.��	�QJ)IJ<��R������)J^QK���K�Ҝ�'��|R�*LR�%F�s=����8%�6JM�4�Yu��#K�1R��)J(���e���]�N�H��"��Z�F���=����b��u)Jr)���c�����j���d�crshD�8fH�u�I�MI�L��Y32�ˬ]��i�0he6���-yS8A��)ͽ�EJ�dN9�#�`�N����w��cy�ڛ��'F�����|�r�X��a'��y�5b�������N�4sF�.)���r��I�&%8�3����#{���Ӑy��`A��6���݄Q9K =���v��Y,D�t�'W0R�$!`�f����Dh�xʹ�*%�ݸ���4Q��,x��Riw��۴�x�6��6�5�,s�������"���Ox`�$���������_9@�0"����A�������"��C˔�
(�g��[��6�f%	 �@�!�(�b֘zX0����z5q�D?Ҋz�||SL~��#���)'4�;��q<F�1�7Fϙ]"ʇ\a���?�x�`t���V:��9�gѩ�:���i�U%D�W�Iݏ=k�({������ngᏁ.�MO�|ZSE��v�u!�(/��`��c�5�1�_�إ��Ɖ�a�>�vCM��*_)�`n|�"p�S0��>R�0m������f<U�Y4�z�)q�]�c"؇���(eGو�EN�@
�",�}�=w�Y��:
���!�m���'��:p����Ʀ�b�)�&1RKk��P\�;t�*nFV��4���5! �KWN��^6����򗖏�ٝV��**���"lk�VH��Q���g 7�-t���:�L��D�J��:^Y4���d�*����ӓcȁ�"r������Ԗ�\�I���&��M޲�rb���h�ů9�g-$�օ�������4��3��s8�@=ш�JU$��vR�X�����ز��U��Vfa�AE��2#R@�+E�E[��u����GU�=N���ْHvt꟝5�X̩��������ڒ񣌴d�l�"���"��ɊD��粮=�v�NA���@Sq�V���c�J�"PD��b��8b�&�*�)�`��)h��H�8��$�:��s��8hv��$	#Q��=C}4(eh���)�E1�5z�c�J��~��P�О��	�+��&&,E	�-�ACjQH�Z\���r�⪾�3��LR��CQl���5u!��j�TY<����5l�0hiZ�"=8>�F2"L�bG�D�/�����v,���IQX4l�g��]]F������s28�����������"��8�Q5x����]�c_3DL�h{�O�Z��������������`Č���!A)--E�H���٤͖g��I�&���sF�J��>L0��*u~	0_o�s�&uxМ�����U�%'��Ǳ�K�'�����X����V�㫬�{�wD�	PڻS� 5��gB��sS`7p��Gn��8���rQ��/t��0J�b�E������!�1v���G���y3��I�cgM�֚S�V�S7�"1�#���6L��6���o*h���������N��'�G&��5��rΊ��k��M��f��t���M�����M{�ڗI���6&=ы+)hIDP�4@�8�ibh�~��.�"���j}
`�.��K!�%*�X,0R�! ��.����..h,�q������	�Z�7S��|p��6d�9̫�(�F�P�A��i���5`\d",��~�Dp{4yQv���|	�$�{�S
`��*��q1ĥt@uhX� B,[XL�7��1S`��5�f�2yS�0{]���iZ ~w��"���J�Reg'�S����!
A�4Bt�N]���t��!2Lt�D8E d`z��I��q�Ӑ���<0��y��[݊r�#~谟�D��bM������3��8���'	��%�J��Yi=J�<ᙉ09�F�t�$LM��6��� ȺT^����Be
`�9����t^�uJT�y$����Q�$^\/ѯBj�#$�7��CC�e7�j���dWI��������	�<�����3$�c�+�g��q_/Nt��Q�+�L/�c����I��k�,eL�����D�m�8G-S�����i��5>��(��|2^�$�2�g�� ���Rb��C&�1�ޘ#@�"T���|������+O/O��FI	�I����(kJe��to�5�cTm`\��m�~Bu�oh&�,�ŋ+(�$��T>����1c,�IZ"�W�B֨�"��E7�H��HV �*&�P�L�S!�x=�������s���Q�4H�9&Ø3U��@& �4_�+v�^��+|[��L�1�X*��B�C��O�mM�:�m�O��k�=����HG�I�2�ڟ�W�����,v|�ՆQ���f�nG��g2�L�dl��I�i���2I���,���Ł�Rdj0Ҕ�T�VTn��%�9dK���C܏�c�YU?1��BD� �����]ݣ�j�CӕhMC	P� ;���`�AUC��K@
{��� �@<�	"H�$Ovr+:H�`id�j4�1K���)E�.EI�O��x���$������(�@{q��А"��"@�q��H =*�J
UEP�H�z _�<S� !�=(�ҫPHHE*)���x��?�(g�(P ł��"\"�����hq��G��7����_K!@.�B(@�U  ����H�
;2G�