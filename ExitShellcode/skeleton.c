#include<stdio.h>
#include<sring.h>


unsigned char code[] = \
"\xb8\x01\x00\x00\x00\xbb\x0a\x00\x00\x00\xcd\80"

main()
{
	printf("Shellcode Length: %d\n", strlen(code));
	int (*ret)() = (int(*)())code();

	ret();

}
