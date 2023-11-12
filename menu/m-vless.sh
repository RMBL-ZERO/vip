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
BZh91AY&SY�I�� ��� (�����������p�D� 0  `!��l

E�I�f�ja%R�Ͷ����$m�ͩe�Bִ��B�*�B@�B) P�R��,$�4�S�BS�h�57��Ц��i���Se6S@�G�i�4=@       @              @              @       %D��M��	���Oʟ�L��j��x���6��zL���h���A�&�`�&
y!��=�=&�d�z� ��=@<��F� |��ث �wb�ߞ��?��4��S�	� ����U*��Mc0��Xᡁ�d`F*���Ѷ�-uYJMekX�ƨT�~
ODn�Uc&�>RK�?��P��q��S	��=y�Ë?�'��Z}[k^��^ů�)$eq����y6v�4ҍ��lL�I>����a@�
A����i�� ��
� 1(����
�V�4���*����Ϛ�!� �JPqS�ZxK������~���D����fE�Z�l��:�S��S;���05^d;�3r�y�R�Ͽ1�w��Wt�zm�ݧE�.\x�,�0�S�1�Q�8&��R�iE�i�z�^��F� �v���6�zs���<��8F��g�^u��p-�J̇��71�Dݺ���ꕙS����	v�����Gҧ�
D[���=�ձ�÷(�;��}W�K���1.`d��b[q�=ef��lX��aIMdJ4J��09W��P>�%�9�0��0�d6Uv�\m����	��*w"��F~T�L�^��/�{ ���q�oR1X� �
�	�DU"�
FLh`��	�2@��z�z.am�&���)e廍"rlЏ<1�Dc!�ZԹN����D$*�:�'F���xsN�8�;vZ��@"�ǜ��gR�C���E>ЄGE�X�b@����`$@�\h6[� C��q�aq�^�[Э^0o�~��ҾU���S�:�{�[�!��Vx�@f,��7.���������殱W3�b��?��K����"�� QnrfXy��� ��@��^�Ow��A;�5_^���ۂb�U"\!@9!���<���ω1�ґ���5�ѿ�0�����.^tܥkZֵ��E��`a@5����xC��o+����ZR��ʴ(���&9�C�k˽�g�)�������or�H�0N�����ƶ
&6�ǴhE�l�B.�B,��R���L2+@ &�e,���kD.��JW��U��鿵���C��h�SV퍎E�]b��t6����(ÖwG��P�2.��R׉j;d�� �{Lo�����IR�=j\G��o����C2�Y�,���RI����R�a�J����L�M\-v;
22��^�h������q
1!m��046�9����ˮ� �9C�7��jr.	n'1�'g9��9�*n<�+R��c�jjZ}c�gtCQcM��,@2�_�43X6,�-�����%gэ� $��{��D�(:L"
_��n��
�,	�rT���b�+��Fތ���y�fv��KOx�����ͣ��_�K�lx���I$��*��7K�u�~����O.�鴕��\�*^�E@���-�~�w�B�����^l];^�
���j��¶�h���d��|��"Ѹ�ZL�h��!���M^S�C����� j�jŘ9�G�WF�L���-&s�.��,��U��Y��[��ί��Q4/�4�$��~�����Ѳ��Y�S]�K�ld�Y��ʅ��4�O�ԵR�-���Y�	"�@i��F��' ��B�x�S����3(aT
�N�e%kT�(V�����?D�`piٸ�wi��1��A�Ә�j ���M�T,b2X$.�EH�E>)퍢P�M���f����(k^�4m�WK�bK?�&
ը>�!���v'L�a_]��~I>��Q�Q)�M��B?�(:�.��4R	�#Al��Sz}0��`�`<��'�	a-C:���B���%)�B��յ_��jF��V�$&�HD�Xb��-
	Q��VС ?���������F�ck��佯�,�p"i�N�Ùz���xA���?J���E(<XT�bF���~NB���$�Ѡ�U��h~O1c����10��<Z{:o/���n���x�����~#;(�vJ�@30d@^�m`�B����ҁI/��}������P.7��
�\�}��3>���a�!��Qw'1�(A�A|� �{�T��PЄ:Ը5�����|d�1|�ǆx�d$�>#�0�jDR�:(/= �h���a��$��7(��a��8q��h������"�Z�Z 9n�-t���b�.e\6Z��a�6z�\���������f����/w��^E���O��}�g���f*�H�6��ɓZ��2++�Di�@PV2aP%Zi y���`���Z������_O7��T=c�D3u#8ȬS��!�@hX(4,yԭ�	(y�=�)������0��y/��\�kn?���{�y�Q���l7zu��*)�z����)��%)��װ��,z1!�0
�p=��|��{��Mf$�-V��u�-�#"˒K:����
�e$o��A9BH"V��hܼ��\�؅�*%E� ~<�<ƕy����Ձ���h�)˳$5a<S�T�#�\C�
�����A�Ԝb�����'��淜.-�Z%;+�?O�J��|"��RQ�f)0��F��<O�Q8/t�k�S������&��a�ɍ�)Nѯ�|Gs���"���1ߌھn����f+�ǲ ̆m�J2Y�	�~r�d�YD�CUxL}��*u9;���@=,010�u�m7b�(`ծ��X��k�F�y�Ge�-+ZYf�; ��G��Xl���B8��2󩲩�٨��7UC�{��Q�/���8�[��p��I@"J�&\��:%�T;c�n�����w���?����9N��
���9�I���@�?*`!3��zE��羂J�p�PaA�3�]�xk��Sc��� �2@2X���g��+v��UH�D W���ƹ2�'�]� c���b�r�w��v�i��j���T2�;;�V�)=X
�xfi�9�
S���J���j�O07�q��%5�������U7���rR@p@�T0��L
��A�URډ��$�	��0�|X�4Dfi�r�ӂ�	���y�cס���q1\�)  F�b��i�ER�OF�Jk�6��Q����s�� ��"}�l��X*R
`���QEk���n�� �x���@h�~NL���74˴��>+^��,�2�1.����r��B��(�9��&q~z����;��̡��<n�t��pr��J�9�v�Ap�T�{����m�g���/�v�Q@�ϒQ��0F�QJ��eP!�` ҭ�<����q�Lց����S��}LCj�8�9'l�o�ښU�օ3x�Щ���0QMp�eZ�[�7���D��yBB(Q�q�̰
n޻B��/{'�C��be0�w��:�� k2�T�ք�[P`]�X� <�sD��s�������d��Թ��A��_`���I��nb$a�rСCMҝX�0F��C�	 ��w0�5���<@<D7���Sjc�~�$ϛD}���E���

� ��U*�I���z˴����x����J���t!b���!�,��H��1M�BP�H	��ȇ:"�f��Do,9����`b�j�,�"�.�[rZ9C��[�C�����6��<E7�D ��Y��
4� <���U=�!��B@7����օ���g��mD;� �18����!�ھ
֪�8D� ��C�#hD�>w|62-��_*``q�<�P���!$H�� _�36#$�	C����U��
t�z��M�:>�O1R�|5�u��D����p3��fJ�ey>Ԉ�����4��-(�?v x����6��w°��m>̧�y
��C�+]�b
hH��Ш�~�䋠Z� �����G���[�+��E@�� �`�P�_Z�*P�fv�ഥ�q8��q��CB�1B��c!,z��Լ<eo��o�>��wW���-z�@Q0��<�ّ]���@��Ń�*�[��`=
�����H<�Dԁ,q.�b�H؂'H"M��*]b�?\�v�T��	�H��1S �QP�� �.'�����;"!Lv�b�`nL�h�J��T8nݺf7
�5��0 J�L��ߗ���zTT�Ա�P�	�Ԧ8"`�M��A
"u��`�<lmC2�HE8F,)b֡@�J�C��� h��Z�'QΈ�w���cƥ���@/�\��R1��� Ts>bS����@*Z��C%0S2��*@�)@����E;t@���S�X!�D!����E岈z�Ć��
(�)
��� M����R�p6�]��� z�S��n<�fp��E���w�!ۦ�	��H�C
��Tm
�u��Gpٶ�F(.KQ��n�"���@Q
�ʍP,`�~ֈ�Ĝ1�$F���'@�D{j��H�w䦡��R�r��V���e��4�`�iRP�Z�elh%���.�b�3Bdn��WΎ"za��fxg	0$Z��nO�(@�q�b���������]�$��/& S`X� v��5�qN@� 8)�u?`�7�U�	����
�ڗ�[@���ԁ��� ֤� ���R(D�w���aD�K��=^��1S$@��ӧ4�����JRw��_Q����p<ޝk�ւ���~�����gP��Ԯ���	��S.r���"�`'No��A'�ʫf���:ԋħ�T�/�JG��S0�oW�r
���a H��t�V�.J�l��
lR���9	RP�V��6��/�Bm3)r)`��Zd���aQ��E��rQ��'_]>>s��lo =]ؓ*���1��Q1(��!t�X�2���h����z��:ǩ�l)�������{�hp��\�ͫ�٣RT�॓� &�X��S� �ԤZ94�E� U4|�ٖ�1�p>��R�=��8-��H $ �B�R)�l��[Z��t�V1X6�kF��J*��tJ�?1�P�����$;�6+e@Bw�k������C��.��[�6l�r$%F$CXŢ�,lJ�T#���(@�Z`�B�!��	z� �Q��ؽ� ��xKK� bB���.=��`���@6�@��P�mł9�� ^�i�>1֕�0��j��Sҥ����x�3����6�⿉}�ܫC��<����^��@B�(�r@8|j�j$C�x���j�qO@}pv��}��O&��5x��������=F����	J�k�n&�dD�((oϤC ���B�$�R1H�B䠅��<��j��,`;�M��Ĩ<�`�B�*�du�5�lD�H���U75R���� � h��!� ��i�Z��3�(���0�R9E���QB5s!J�׾��te��h��p�R�P
C�00�����<
D "\�s5�Ph:D.�՝6�j�����:4A�Z���>� @1�"/X$Wq<`�H��Bch�;�a�(�z�m@ĩaҀ��=a�UoϏ�Zt
�X������T���^c��բ�����j�sT�0��й4ɹB��)K%��[���k���DFEt��ra(���[T�6�h�/�p>R�mD�LA�BE	��(4-����ِ�{��J� ��x�=�@����Oq��O��x�N ��A�~u��3�и{�V��\��o�v�� ��6�!���<ܽh��'��ku���nUv��hp��u�1D,)�W���}�Wڴ��"���DO���Ԃ����.E
�j<( X�@�+�����uӼK��SM�| ����`Xh�%��5B�@!�����0���!9%ː�!@j�u^��S*ѽ�t]A����L��)MEͪZ�P6�`�����z�C���`SCa�Y=�äC!
�<��D*��;�*>�;���>�1�Њ*'��T!�8>�0���@�k�4�I���$	"Ĥ�z��	�^��������y��}�0Yʥ�p�1��P�C� h6��}�y��C%����Iѿ0 bT� �ݽ[e�@L�E��l��Fsf��O�X�`� t|ō%̰B�oHX0<���`@�Š��O���C�D
�@��@D"�D��>�^؞HA`�D�ĴJ(R B%#	$��%���� ����(� �1 ��O��S����ub�\ȁ�G����"�(H|���