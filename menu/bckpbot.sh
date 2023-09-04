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
BZh91AY&SY�m ��g�� ����������@D@  P[ն�\���
a�"�z���mG�h7�~�d PѦ��  ���)�3S�F��M'�     F!���eF�!4m@� 4� @z�=F���i�@�ɠ d�  2dA$Be0�	��S�h��zM6�=	=OQ��������1	���ȏ��n���;�Q�8�փ�i0�$;����e��b�R��&	�X9���@���;4@��T!�!�u 6O��A�lu�j�t���G1��2H�w�'��8ҿ�4��J"C@(�f,A�+{VCl;��C���
c3�ڮ��4~)F�UB���ֶ��=�Ì�G%	�,a@8Iy^�>*^�����Y�/�-����C }F���r0(J�m���,"�D��V�}�U�&YfZr�Y} �&�q��#��7PV���{v��*:�"w�\IcL0|%u�<��+&5�t$K�aDꀑSЖ�~U"pҗ�'��dx�˱�(���`�+t���Hr�x�Te 7L ���@�������|��8���: �>���2�`�7�����V`������ž��b��*s�)=E��7��Yn�o���ך�@c%~�$�C�F�1cv�؃�����ښ�3ti��n%�8��FU��@�g�i*���iUWĖ��&c����@P4a�:ĸ`_܂1%!�1JLk�W�P(0 ����B�t���;[���z�5=ы4���YH#�@�`3��l���A�kH���(y��FLPy�M"�V��B��9����O��*�Y�m,f����@�R9�p�R�&E���Dd�|����`CR�&ZJ�%����x��@��j��?n�d)�r9��ʡ����%QQ��C�~!��1���:���r�`�vpf�kw,�"S�AN��&���=A}�����Y"�K�%Q�K�fc�!r�a�[֦�d�'&p�5vjfq�o�*�G�Rv��	��E+��A�����hP2�]�J)?�&�&%AY�An4`�W!ֽ.�4ùh](E(ҝ#	2�F���s#%�aM٦n4F<P��z�	�d�vТ%*�����/$�;�x�̐p5����I���x"!8Ì^"88��.�p�! �4