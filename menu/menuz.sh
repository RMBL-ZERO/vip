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
BZh91AY&SY�c�{ ����@ �����������PfҐ    @ `���n�}W������3��輪���o����{��P�s�.�݅=h� V��R�V�v��$�L�4�2i�# �T�L4�mCh�I�����SL�b  $�C L�)�0��=P�G��d��h4z�&��A�� 4	5S�)���A�  � =F�h    4 �RA&�S�ɔ���Q�6Q�4ښ�2i�# dd�  ���2������e2m&�SM6H�=F##��d`C�� h4=%#@$� 5O�SުyOeO�M�i���P4��&���-@7@5�#&�OM���k�=��{c�^��ܼ�n�.���}Z�r�����][����0gmB�`|��o�6�� ZS��b�P�(mw�Rv�,e&s�{�Z��Yt���T�Wch8�����n#W�d�d���T��R�P:��]�kvqt�ݩ��4VZ;6�fg�͸�T�ʻ�W"S3!��R�pP3���HY���"���.�� �Ƒ�"8�[�]� H�&ԑT��Jl���楼Zy��@�s�Ֆ�S�J�~"@�d�
�K�Ǔ�����B7����c3ꟽܠ/�fY��2�p�����-gƆ1��T�l��܌n�1���:���=��t���k >�Z�g50�i`��0�D׆�"?����7*?�k��e\]���愾PD{�I@N}`{�_�!@�29'�G���8w�����&��Xl�d�E$S��)����?`$+S���� ��q=�,�CuC�����۞EN.�xL�R��q�_($�e#z�A���dH���W(d���OF`�j���C�����������_�L�_>���6� C@]���3z{��17������k@�J���OW���{��D��b�p�i�A�PH�@��Pė�</|�[�8��ۚo���ry��pJ�\	��JR���R����I��w�[�� Ћ��
��^�����qm� U�w�ᔺ=[|UD�w�~K6rM�"���|͒������1��lʩ'�~2$����z(Fa<!��xz{WOʞ���G}�nЭ�`c��v8M���%�/�O��͍!���|���R��2q@Z�u��e��K#�b�ϲa��+��n��^��3����|
V+���9���y,`�e(�Ē+�g%����}an���ml^�X�ݟ�o�j�4���jkM��i-A�xۯO�Qd�R�H�MV24�kkLD!��$
R9:���c�N���
�RN��0�p?	+S��Cf�;~
� �U��&)&-�(��RZ����f���xz~Ә����	���{�9Ʌ�3��wWV*���H(Aj_(�� +!v��LF�ٍh�W��pj���m[w'O�}l���l��`�^Q�7;����7^B��1�oYx�:�gi=w�&&�M��w�<m*�"YT�P�%���K�/�Rm���;��o���ʊz|��.�{DM<�ě;���	�'C����3Fo�_�J��lx�-��F$�9�.ut�&��j!�ƨwXZ����D
�?9`��=\%�O$�`P�%���T��1@�Ӥ��
a��E������,X����]��M Ն5i"�ڕ��)I۱@ԃ�0C���DR���B�|j�y5�RN�sHޘ��R���Ij^�������,X�9���"T>'%_F��~�69GM�9nOw4f��ܰ~D@d4�+�P$�
R��zR��]�ְ��nW�X��xd�3r!��u�������������F�_J�T��+*�!m��cx��g��;�lZ�$	�#:n���C�7GJĶ�аȹOf��m�0�H��.����S��y*}.�ʄ���H[��,���2s;%�?D�I�g� v�f=�f���ǌhL��.[|�a���ua�|j���:��ҍ*M�k3_罐\�f�( �k���쑙m�J���� �-�#�u:���MoG�S1t��{��Q�J��:e�A�c��h�7�������B���j��%��=fc�^�{c��*��g$"k�1�a�/��NB
�d��J$^���Ef���j��N�Y���y�����n֕A+ 6�$���[I���׈,���j?	���}{)�;��I>����$ �VblR���4̍�{H�6w_qrr&$�� Č�#�������;:�z����U�	T��h2p���!��9��"a^�ƨ+b2����~8�fv��ͻW�|�^�-��jH���\f/��ʻ�T���Ńų*��Ӛo���҂�K�%����;٘�&
��7DĢ1[�=a钪+���,�Y��*�-{o8I��a�.��e�V�,$� �iX����2�%.v Fh�U�\d�o�S *o��-a��P䌶��rq��W�@��V�e۠h=oG����u��}�}�E^m�<��)[>�N���7w�����Ʀ�C����U�Y�'���fҸU-4�&�=���nK�_���8�|�}�Y��uZ��t�,q�����|#J��4z�s��>:����h�*��ƛ�@������3��Š�BI�J����4m��^����0��WXU��~`��T�iTV��� DD�]��|��@"j$�sl��@��)0����<|4c�_37q�M�w	k��X�,��ܫ�Q��oa�9bsܑ��'�
X33ŋ~�(+񑷈F��ȷ�6�E�"��(��dc&@�6�&��O�Y�|���b!��o!]���b�9Xib��3�B��m���%,'f����B�7wyc�M/$�S�x?@*T�t��#�ɖ8�EfY��뵲 R��qK^�
�<����
�}I�;,�ڮX�(rXl$��4�� K.	����<J>�T�4�b��H޸�0�ԔA	�DVG'5 ��\ �=��dKm,����u�T��eY �n'����#���Y9��6v����E"�_�#|�Hسz1��?�盍z�S�K���00��pR��RӐ�M톩t,����_}D/�ZZ؍��@0\%f�@��m��`󖏭�X��rd$���lnW�Q�a3ԋ	
��gmML���H���Nd��hۘ�E�P'v$���Ǭ�7V�
��\Bó�6QJ�	,�Z��ξ�Ky�$9;��f�S|�9hL�u.�r �DTPr�շ�t9�Ъ�D�8%��I=�>�}�qs�,�*Y��H�W�M����\���u9�����cQ���7.pC�� �;��7��of��T��v\%�������-�dΦ�,B7 y4Qu�4��%��r�?� ~\�Ddb�@NvF�C�~2
fr��ί���R�T�$Q�n)y�S~"����}�Q��� ��J��6�0�iU��*߁�����#9�B� ��i%/q�f�/�
��R�A���g-��4i�?+ΙX��R,��y��0CmZ!r$T�(2��5�fm��68�����fꙧ��)Ǻ��m8��UUTR�(QEU�l�( �h�`��5+%wU
r�·�(�"�X�p[D��hgB��4k�*�:�+4E�5���HYk�h��^@,B��!�5�zwr���F�	��2�	���]Fu�A/�.5��L`�dϥ�S�� ��xP����"���$�(`$���8�x�!XPnh4��%Q*�E�f�n ��!�ZB:&5aU����D!��5���mA������ N�,N�p (�*/���:&!���`BHZ�-��CS߻�(ݦF!On�v��߁�������B��M���h��"@�mkȮ̩I��!G�LS���!z��;J��W���@�x/���SB�da�9�и��Z�L*|�x�:��=%7E��v�A�6�!�_e�F�^j �e��`q��4)dk$��%)B	^ �IPr�b�8�b#g$=�i!����`���[$�)��Җ�m�?��7�h٧PA�����>��N�g3�u�1o��ӡ�v�3�'û�N!X'(�����<�@iƝ�|��t
��q����Z�.@4]	8�7�z��,t2��6�@f�lI�"Sd�d���?�����6Tqq87#�R� �_��ű�qg��l�����C ���9�� 9�;�G:h|�=�H^�~�.�b���T}5��	m�aR�`��QHD��w�e�������\�I��B�f$��q�d�
f�*�(p�� �(҂$�B+��8 �^�7AD�;��0	�;5�Qyэ>9��7K�?����m��y����V�;į���,)�q�P�a-FQ�.�[�_}������{B��˭�����ã��9/5�/:��(-u��d�{�ք�^ݫ7��A�Z
i�y
}Ѱ]*�ꯂ���f,�NP\d���k�0rjMa����X�B�F���X�Ց7�:.�Nvl 7`
ac�4�-��C�nvy�] $�M	�H-SB�� � �[��oOQ��&�Y��5:@�:��z��¢Á'�y�H�`�L��&V�3�*<$�!��k!��1���vFW�b��N�	��<f��7�$�!�3[��;ER�������e24�@`L��S�|����D��uc�������;b��F�#=Ǯ:���R!�X��C6s]}N�''	�&��	�X��89������77�s7��݅�V�n·�^��=F{�Њ7@��\*f4����`)lVF��$G;� \����D��I�35k��Y/^��Dٹ�wك;�#B fq�d�	S�(,�(9��ûQN�P|�qZ�?H�Z_1h��5EL7��;�\�*�2NZb�_@��{��7�~����4	�+�
(�����b��V��l�8M�����-i�#;�yp&�&�k� �y'f#�a L5�((��ӭ�V�U�Q�cEUW'**I��Oufl�I$��C�n/�FBa4қq(\�H��0�j�b�͋�%!NR���xE�!���2�U"�a��*�j�|Q��#P���W����b9�A��H��x}��(0M!B�*��踏y�.���*��3���Yް�EE��1�
�
�<#r��ѐ��X#�U�1�S��1T��Q iQ�R�,�Q@@���ń���� ڴ"� �PIT���s``�@xp�>%�V�.��(�M��P�x�ܑN$ ���