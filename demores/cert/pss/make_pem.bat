rem ������Կ,ʹ��openssl��������һ��RSA˽Կ
openssl genrsa -des3 -out server.key 2048

rem ����CSR��֤��ǩ������,��Ҫ����������ң����������У���֯����֯��λ��Common Name��Email������Common Name������д�Լ������ֻ������������Ҫ֧��https��Common NameӦ������������һ�£������������������档
openssl req -new -key server.key -out server.csr

rem ɾ����Կ�е�����
openssl rsa -in server.key -out server.key

rem ������ǩ��֤��,�ڲ����߲���ʹ�ã�ֻҪ����֤�����ѾͿ����ˡ�
openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt

rem ����pem��ʽ�Ĺ�Կ,��Щ������Ҫ��pem��ʽ��֤�������������
openssl x509 -in server.crt -out server.pem -outform PEM
