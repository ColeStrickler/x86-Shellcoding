#!/usr/bin/python


shellcode = ("\x31\xc0\xb0\x04\x31\xdb\xb3\x01\x31\xd2\x52\x68\x72\x6c\x64\x0a\x68\x6f\x20\x57\x6f\x68\x48\x65\x6c\x6c\x89\xe1\xb2\x0c\xcd\x80\x31\xc0\xb0\x01\x31\xdb\xb3\x05\xcd\x80")


encoded = ""
encoded2 = ""


print "Encoded shellcode:"



for x in bytearray(shellcode):
	# complement
	y=-x
	encoded += '\\x'
	encoded += '%02x' % (y & 0xff)
	
	encoded2 += '0x'
	encoded2 += '%02x,' % (y & 0xff)


print encoded
print encoded2

print 'Len: %d' % len(bytearray(shellcode))
