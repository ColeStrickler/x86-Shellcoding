#include<stdio.h>
#include<string.h>


unsigned char code[] = \
"\x31\xc0\xb0\x04\x31\xdb\xb3\x01\xb9\xa0\x90\x04\x08\x31\xd2\xb2\x0c\xcd\x80\x31\xc0\xb0\x01\x31\xdb\xb3\x05\xcd\x80";

void main()
{
	printf("Shellcode Length: %d\n", strlen(code));
	int (*ret)() = (int(*)())code;

	ret();

}
