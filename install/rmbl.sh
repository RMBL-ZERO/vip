#!/bin/sh
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
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY��< U�p� }�����������`�    h    1�2a 1�4h��h   Ҡ� h � �      �ѣh�&b��F� i��  1�2a 1�4h��h  �ѣh�&b��F� i��  R"2�2h &�Oє��h���yOz�f���Z"&��}X_�O����IC�aP�u�_�$Yr��$M$Դ����DvH�������D��<j ���7��Q�
Q�DR���.��#�D����i?Y?�qY��2�Y]��>_��j&��l[s��禎��2�g���hx����I
D4gy#9P�h,�"#���?D�H��X��L&�{�(n�j�dII������M��H���◈=B��HG���z���4���^��.7�����){��V���iX��J<	�S>�N����<�[�x����1��x����<ޕfW�������Jۆ�����ʍ��w�,��b]��G�o��t0��ZZ�4MB��k�"uk,DZ[)������-C4�bq��?��qdZ�FO�gZ�|C��6��"�#�>M��a���k�7��wZ�t�c��_ˍ�mUL�[N���`�E��K� �q�C�=o������N7����ZK"l"����Dt�#�O�0����p��}�oۅy_��煫W�$���։��J)����+��+�+�H�t�W;c�x��������m���Lo��hx�k7�Jѫ��.N6e��؊}������e=��k�D�[���qƬuF�{9V<�"/fa6y|�\��ώ�m7�β��B��2�(�о�6-$^ʵB�czP�k�DS)y�֯X�%�"�\�n��E��9"S���|�����в���oB⸧/L����q�|w�"�j���Q���i�&,.m̰˧Q����՟�Ī��5��Z)]��o�S�pF��%��]{h���Ĳ���{�^TYٜbgay��,r_��)y�h��U#q��<���N��e�=Q����Å�dcً�)���U���+EU4�Ӟ(�r�z��,5w�<�*V)��Y$� 1��d� ��$�1͡�`��B��j!Q^X�p@��Qp�·}{�W۱�j5;�pC�c����$�n���Z6�jl�cϡ����Zj�&�T�(�i�+"�z��[���c���-Ev%e����SYP��N�De;�T�!#QJV���|T?�Rw�����uA`~OY�fwP��U���ĉ������m�����iƧC#Q�eb��S�%�^_�gz��M���M[��ŕ��h�a��qF6ԗQ��Lh�4����qhO,��T��;��V�/�E�U�&�i�m��B;U������|S�u���.]�I;ϢHv��V��S��I)2��yʏxl�c���Rg+:O�$I$�����x�m:�U�ZFGA��-W�Y+[x��JH�~e��Tŕ�n7t%	S$;T1�4&�O�,���_�]���\<E�KV�fZ
a���2�8\�="L�c2g���C_�	(��=
j*a(���n���U�`(����Y=ń�>����nX�.h��Vh{�|��QK3��t:��d(T��@�Vƭ���ǈ�\}���<��-"����ahX-��TXnZ=,�K�f��(�s4R�Q��)�&�r24�/ri����V'Q�f��%5xWP���Dn�Lj��E����-����b+6�$D�|P9�(��q�GsQ4,���n:X^)9+j�g;\"�H�&�-9#8��dT�6�hu:J�H��ċ(|�I���7�M5�mo�XV�YT����5n+��̸�BOCAmm�&��*������1����6�*�/�!1�����6z�׽Wa2����$]�T��	8� ����Д%F��h�l+B��)R���eQ.��
�������40Wyj4G�dc|̱f=�w���hk��bE�q�3|��Zb�䛧�y�I}س���{���fk�2���D5�R���!��T	��\{����H�
9O�