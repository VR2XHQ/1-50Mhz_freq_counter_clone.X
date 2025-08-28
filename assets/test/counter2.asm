0000:  29a1  goto    0x01a1
0001:  0782  addwf   0x02, 0x1
0002:  34dd  retlw   0xdd
0003:  3484  retlw   0x84
0004:  34e9  retlw   0xe9
0005:  34e5  retlw   0xe5
0006:  34b4  retlw   0xb4
0007:  3475  retlw   0x75
0008:  347d  retlw   0x7d
0009:  34c4  retlw   0xc4
000a:  34fd  retlw   0xfd
000b:  34f5  retlw   0xf5
000c:  34fc  retlw   0xfc
000d:  343d  retlw   0x3d
000e:  3429  retlw   0x29
000f:  34ad  retlw   0xad
0010:  3479  retlw   0x79
0011:  3478  retlw   0x78
0012:  345d  retlw   0x5d
0013:  34bc  retlw   0xbc
0014:  3408  retlw   0x08
0015:  3400  retlw   0x00
0016:  34ff  retlw   0xff
0017:  34f8  retlw   0xf8
0018:  3428  retlw   0x28
0019:  342d  retlw   0x2d
001a:  34f4  retlw   0xf4
001b:  340d  retlw   0x0d
001c:  3439  retlw   0x39
001d:  3475  retlw   0x75
001e:  34e9  retlw   0xe9
001f:  3418  retlw   0x18
0020:  3485  retlw   0x85
0021:  3439  retlw   0x39
0022:  3419  retlw   0x19
0023:  34dc  retlw   0xdc
0024:  341d  retlw   0x1d
0025:  3421  retlw   0x21
0026:  0782  addwf   0x02, 0x1
0027:  34f7  retlw   0xf7
0028:  34fb  retlw   0xfb
0029:  34fe  retlw   0xfe
002a:  34fd  retlw   0xfd
002b:  34ff  retlw   0xff
002c:  0782  addwf   0x02, 0x1
002d:  3400  retlw   0x00
002e:  3498  retlw   0x98
002f:  3496  retlw   0x96
0030:  3480  retlw   0x80
0031:  3400  retlw   0x00
0032:  340f  retlw   0x0f
0033:  3442  retlw   0x42
0034:  3440  retlw   0x40
0035:  3400  retlw   0x00
0036:  3401  retlw   0x01
0037:  3486  retlw   0x86
0038:  34a0  retlw   0xa0
0039:  3400  retlw   0x00
003a:  3400  retlw   0x00
003b:  3427  retlw   0x27
003c:  3410  retlw   0x10
003d:  3400  retlw   0x00
003e:  3400  retlw   0x00
003f:  3403  retlw   0x03
0040:  34e8  retlw   0xe8
0041:  3400  retlw   0x00
0042:  3400  retlw   0x00
0043:  3400  retlw   0x00
0044:  3464  retlw   0x64
0045:  3400  retlw   0x00
0046:  3400  retlw   0x00
0047:  3400  retlw   0x00
0048:  340a  retlw   0x0a
0049:  3400  retlw   0x00
004a:  3400  retlw   0x00
004b:  3400  retlw   0x00
004c:  3401  retlw   0x01
004d:  083c  movf    0x3c, 0x0
004e:  0782  addwf   0x02, 0x1
004f:  2ab6  goto    0x02b6
0050:  2ac1  goto    0x02c1
0051:  2ad7  goto    0x02d7
0052:  2adf  goto    0x02df
0053:  2ae7  goto    0x02e7
0054:  2aef  goto    0x02ef
0055:  2afa  goto    0x02fa
0056:  2afc  goto    0x02fc
0057:  2afe  goto    0x02fe
0058:  2b00  goto    0x0300
0059:  2b02  goto    0x0302
005a:  2ab6  goto    0x02b6
005b:  083c  movf    0x3c, 0x0
005c:  0782  addwf   0x02, 0x1
005d:  2b0d  goto    0x030d
005e:  2b0e  goto    0x030e
005f:  2b15  goto    0x0315
0060:  2b23  goto    0x0323
0061:  2b30  goto    0x0330
0062:  2b35  goto    0x0335
0063:  2b38  goto    0x0338
0064:  2b38  goto    0x0338
0065:  2b38  goto    0x0338
0066:  2b38  goto    0x0338
0067:  2b0d  goto    0x030d
0068:  0064  clrwdt
0069:  1683  bsf     0x03, 0x5
006a:  0081  movwf   0x01
006b:  1283  bcf     0x03, 0x5
006c:  3400  retlw   0x00
006d:  0064  clrwdt
006e:  0181  clrf    0x01
006f:  1683  bsf     0x03, 0x5
0070:  3027  movlw   0x27
0071:  0081  movwf   0x01
0072:  0064  clrwdt
0073:  302f  movlw   0x2f
0074:  0081  movwf   0x01
0075:  1283  bcf     0x03, 0x5
0076:  3400  retlw   0x00
0077:  3000  movlw   0x00
0078:  0086  movwf   0x06
0079:  018b  clrf    0x0b
007a:  0064  clrwdt
007b:  0181  clrf    0x01
007c:  1683  bsf     0x03, 0x5
007d:  302b  movlw   0x2b
007e:  0081  movwf   0x01
007f:  1283  bcf     0x03, 0x5
0080:  0063  sleep
0081:  0000  nop
0082:  0008  return
0083:  00c9  movwf   0x49
0084:  397f  andlw   0x7f
0085:  2001  call    0x0001
0086:  1bc9  btfsc   0x49, 0x7
0087:  3802  iorlw   0x02
0088:  00c9  movwf   0x49
0089:  3400  retlw   0x00
008a:  00ca  movwf   0x4a
008b:  397f  andlw   0x7f
008c:  2001  call    0x0001
008d:  1bca  btfsc   0x4a, 0x7
008e:  3802  iorlw   0x02
008f:  00ca  movwf   0x4a
0090:  3400  retlw   0x00
0091:  00cb  movwf   0x4b
0092:  397f  andlw   0x7f
0093:  2001  call    0x0001
0094:  1bcb  btfsc   0x4b, 0x7
0095:  3802  iorlw   0x02
0096:  00cb  movwf   0x4b
0097:  3400  retlw   0x00
0098:  00cc  movwf   0x4c
0099:  397f  andlw   0x7f
009a:  2001  call    0x0001
009b:  1bcc  btfsc   0x4c, 0x7
009c:  3802  iorlw   0x02
009d:  00cc  movwf   0x4c
009e:  3400  retlw   0x00
009f:  00cd  movwf   0x4d
00a0:  397f  andlw   0x7f
00a1:  2001  call    0x0001
00a2:  1bcd  btfsc   0x4d, 0x7
00a3:  3802  iorlw   0x02
00a4:  00cd  movwf   0x4d
00a5:  3400  retlw   0x00
00a6:  3000  movlw   0x00
00a7:  00c9  movwf   0x49
00a8:  00ca  movwf   0x4a
00a9:  00cb  movwf   0x4b
00aa:  00cc  movwf   0x4c
00ab:  00cd  movwf   0x4d
00ac:  3400  retlw   0x00
00ad:  138b  bcf     0x0b, 0x7
00ae:  1683  bsf     0x03, 0x5
00af:  009b  movwf   0x1b
00b0:  1283  bcf     0x03, 0x5
00b1:  0800  movf    0x00, 0x0
00b2:  1683  bsf     0x03, 0x5
00b3:  009a  movwf   0x1a
00b4:  151c  bsf     0x1c, 0x2
00b5:  138b  bcf     0x0b, 0x7
00b6:  3055  movlw   0x55
00b7:  009d  movwf   0x1d
00b8:  30aa  movlw   0xaa
00b9:  009d  movwf   0x1d
00ba:  149c  bsf     0x1c, 0x1
00bb:  189c  btfsc   0x1c, 0x1
00bc:  28bb  goto    0x00bb
00bd:  111c  bcf     0x1c, 0x2
00be:  1283  bcf     0x03, 0x5
00bf:  3400  retlw   0x00
00c0:  00af  movwf   0x2f
00c1:  138b  bcf     0x0b, 0x7
00c2:  1683  bsf     0x03, 0x5
00c3:  009b  movwf   0x1b
00c4:  141c  bsf     0x1c, 0x0
00c5:  081a  movf    0x1a, 0x0
00c6:  1283  bcf     0x03, 0x5
00c7:  0080  movwf   0x00
00c8:  082f  movf    0x2f, 0x0
00c9:  0008  return
00ca:  20c0  call    0x00c0
00cb:  3e01  addlw   0x01
00cc:  0a84  incf    0x04, 0x1
00cd:  20c0  call    0x00c0
00ce:  3e01  addlw   0x01
00cf:  0a84  incf    0x04, 0x1
00d0:  20c0  call    0x00c0
00d1:  3e01  addlw   0x01
00d2:  0a84  incf    0x04, 0x1
00d3:  28c0  goto    0x00c0
00d4:  01b0  clrf    0x30
00d5:  01b1  clrf    0x31
00d6:  01b2  clrf    0x32
00d7:  01b3  clrf    0x33
00d8:  01ac  clrf    0x2c
00d9:  0181  clrf    0x01
00da:  0000  nop
00db:  0000  nop
00dc:  084e  movf    0x4e, 0x0
00dd:  2026  call    0x0026
00de:  00af  movwf   0x2f
00df:  3049  movlw   0x49
00e0:  074e  addwf   0x4e, 0x0
00e1:  0084  movwf   0x04
00e2:  0800  movf    0x00, 0x0
00e3:  0086  movwf   0x06
00e4:  082f  movf    0x2f, 0x0
00e5:  0085  movwf   0x05
00e6:  0acf  incf    0x4f, 0x1
00e7:  1b4f  btfsc   0x4f, 0x6
00e8:  0ace  incf    0x4e, 0x1
00e9:  134f  bcf     0x4f, 0x6
00ea:  084e  movf    0x4e, 0x0
00eb:  3c04  sublw   0x04
00ec:  1c03  btfss   0x03, 0x0
00ed:  01ce  clrf    0x4e
00ee:  0801  movf    0x01, 0x0
00ef:  00b3  movwf   0x33
00f0:  3001  movlw   0x01
00f1:  1fac  btfss   0x2c, 0x7
00f2:  0103  clrw
00f3:  1bb3  btfsc   0x33, 0x7
00f4:  0103  clrw
00f5:  07b2  addwf   0x32, 0x1
00f6:  1803  btfsc   0x03, 0x0
00f7:  0ab1  incf    0x31, 0x1
00f8:  1bb1  btfsc   0x31, 0x7
00f9:  2918  goto    0x0118
00fa:  0833  movf    0x33, 0x0
00fb:  00ac  movwf   0x2c
00fc:  08ae  movf    0x2e, 0x1
00fd:  1903  btfsc   0x03, 0x2
00fe:  03ad  decf    0x2d, 0x1
00ff:  03ae  decf    0x2e, 0x1
0100:  0064  clrwdt
0101:  300c  movlw   0x0c
0102:  3eff  addlw   0xff
0103:  1d03  btfss   0x03, 0x2
0104:  2902  goto    0x0102
0105:  0000  nop
0106:  0000  nop
0107:  0000  nop
0108:  0000  nop
0109:  0000  nop
010a:  082d  movf    0x2d, 0x0
010b:  042e  iorwf   0x2e, 0x0
010c:  1d03  btfss   0x03, 0x2
010d:  28dc  goto    0x00dc
010e:  0801  movf    0x01, 0x0
010f:  00b3  movwf   0x33
0110:  3001  movlw   0x01
0111:  1fac  btfss   0x2c, 0x7
0112:  0103  clrw
0113:  1bb3  btfsc   0x33, 0x7
0114:  0103  clrw
0115:  07b2  addwf   0x32, 0x1
0116:  1803  btfsc   0x03, 0x0
0117:  0ab1  incf    0x31, 0x1
0118:  3400  retlw   0x00
0119:  0800  movf    0x00, 0x0
011a:  0a84  incf    0x04, 0x1
011b:  00b0  movwf   0x30
011c:  0800  movf    0x00, 0x0
011d:  0a84  incf    0x04, 0x1
011e:  00b1  movwf   0x31
011f:  0800  movf    0x00, 0x0
0120:  0a84  incf    0x04, 0x1
0121:  00b2  movwf   0x32
0122:  0800  movf    0x00, 0x0
0123:  0a84  incf    0x04, 0x1
0124:  00b3  movwf   0x33
0125:  01a7  clrf    0x27
0126:  3040  movlw   0x40
0127:  0084  movwf   0x04
0128:  0064  clrwdt
0129:  0827  movf    0x27, 0x0
012a:  202c  call    0x002c
012b:  00a8  movwf   0x28
012c:  0aa7  incf    0x27, 0x1
012d:  0827  movf    0x27, 0x0
012e:  202c  call    0x002c
012f:  00a9  movwf   0x29
0130:  0aa7  incf    0x27, 0x1
0131:  0827  movf    0x27, 0x0
0132:  202c  call    0x002c
0133:  00aa  movwf   0x2a
0134:  0aa7  incf    0x27, 0x1
0135:  0827  movf    0x27, 0x0
0136:  202c  call    0x002c
0137:  00ab  movwf   0x2b
0138:  0aa7  incf    0x27, 0x1
0139:  0180  clrf    0x00
013a:  082b  movf    0x2b, 0x0
013b:  02b3  subwf   0x33, 0x1
013c:  082a  movf    0x2a, 0x0
013d:  1803  btfsc   0x03, 0x0
013e:  2944  goto    0x0144
013f:  02b2  subwf   0x32, 0x1
0140:  1903  btfsc   0x03, 0x2
0141:  1003  bcf     0x03, 0x0
0142:  03b2  decf    0x32, 0x1
0143:  2945  goto    0x0145
0144:  02b2  subwf   0x32, 0x1
0145:  0829  movf    0x29, 0x0
0146:  1803  btfsc   0x03, 0x0
0147:  294d  goto    0x014d
0148:  02b1  subwf   0x31, 0x1
0149:  1903  btfsc   0x03, 0x2
014a:  1003  bcf     0x03, 0x0
014b:  03b1  decf    0x31, 0x1
014c:  294e  goto    0x014e
014d:  02b1  subwf   0x31, 0x1
014e:  0828  movf    0x28, 0x0
014f:  1803  btfsc   0x03, 0x0
0150:  2956  goto    0x0156
0151:  02b0  subwf   0x30, 0x1
0152:  1903  btfsc   0x03, 0x2
0153:  1003  bcf     0x03, 0x0
0154:  03b0  decf    0x30, 0x1
0155:  2957  goto    0x0157
0156:  02b0  subwf   0x30, 0x1
0157:  1c03  btfss   0x03, 0x0
0158:  295b  goto    0x015b
0159:  0a80  incf    0x00, 0x1
015a:  293a  goto    0x013a
015b:  082b  movf    0x2b, 0x0
015c:  07b3  addwf   0x33, 0x1
015d:  082a  movf    0x2a, 0x0
015e:  1c03  btfss   0x03, 0x0
015f:  2965  goto    0x0165
0160:  07b2  addwf   0x32, 0x1
0161:  0ab2  incf    0x32, 0x1
0162:  1903  btfsc   0x03, 0x2
0163:  1403  bsf     0x03, 0x0
0164:  2966  goto    0x0166
0165:  07b2  addwf   0x32, 0x1
0166:  0829  movf    0x29, 0x0
0167:  1c03  btfss   0x03, 0x0
0168:  296e  goto    0x016e
0169:  07b1  addwf   0x31, 0x1
016a:  0ab1  incf    0x31, 0x1
016b:  1903  btfsc   0x03, 0x2
016c:  1403  bsf     0x03, 0x0
016d:  296f  goto    0x016f
016e:  07b1  addwf   0x31, 0x1
016f:  0828  movf    0x28, 0x0
0170:  1c03  btfss   0x03, 0x0
0171:  2977  goto    0x0177
0172:  07b0  addwf   0x30, 0x1
0173:  0ab0  incf    0x30, 0x1
0174:  1903  btfsc   0x03, 0x2
0175:  1403  bsf     0x03, 0x0
0176:  2978  goto    0x0178
0177:  07b0  addwf   0x30, 0x1
0178:  0a84  incf    0x04, 0x1
0179:  3020  movlw   0x20
017a:  0227  subwf   0x27, 0x0
017b:  1d03  btfss   0x03, 0x2
017c:  2928  goto    0x0128
017d:  3040  movlw   0x40
017e:  0084  movwf   0x04
017f:  0880  movf    0x00, 0x1
0180:  1d03  btfss   0x03, 0x2
0181:  2992  goto    0x0192
0182:  0a84  incf    0x04, 0x1
0183:  0880  movf    0x00, 0x1
0184:  1d03  btfss   0x03, 0x2
0185:  2992  goto    0x0192
0186:  0a84  incf    0x04, 0x1
0187:  0880  movf    0x00, 0x1
0188:  1d03  btfss   0x03, 0x2
0189:  298f  goto    0x018f
018a:  0a84  incf    0x04, 0x1
018b:  0880  movf    0x00, 0x1
018c:  1d03  btfss   0x03, 0x2
018d:  298f  goto    0x018f
018e:  0a84  incf    0x04, 0x1
018f:  1851  btfsc   0x51, 0x0
0190:  17c4  bsf     0x44, 0x7
0191:  2993  goto    0x0193
0192:  17c1  bsf     0x41, 0x7
0193:  0800  movf    0x00, 0x0
0194:  2083  call    0x0083
0195:  0a84  incf    0x04, 0x1
0196:  0800  movf    0x00, 0x0
0197:  208a  call    0x008a
0198:  0a84  incf    0x04, 0x1
0199:  0800  movf    0x00, 0x0
019a:  2091  call    0x0091
019b:  0a84  incf    0x04, 0x1
019c:  0800  movf    0x00, 0x0
019d:  2098  call    0x0098
019e:  0a84  incf    0x04, 0x1
019f:  0800  movf    0x00, 0x0
01a0:  289f  goto    0x009f
01a1:  3000  movlw   0x00
01a2:  1683  bsf     0x03, 0x5
01a3:  0085  movwf   0x05
01a4:  1283  bcf     0x03, 0x5
01a5:  0185  clrf    0x05
01a6:  3000  movlw   0x00
01a7:  1683  bsf     0x03, 0x5
01a8:  0086  movwf   0x06
01a9:  1283  bcf     0x03, 0x5
01aa:  0186  clrf    0x06
01ab:  01ce  clrf    0x4e
01ac:  01cf  clrf    0x4f
01ad:  3013  movlw   0x13
01ae:  00c8  movwf   0x48
01af:  3014  movlw   0x14
01b0:  2083  call    0x0083
01b1:  3014  movlw   0x14
01b2:  208a  call    0x008a
01b3:  3014  movlw   0x14
01b4:  2091  call    0x0091
01b5:  3014  movlw   0x14
01b6:  2098  call    0x0098
01b7:  3014  movlw   0x14
01b8:  209f  call    0x009f
01b9:  3027  movlw   0x27
01ba:  2068  call    0x0068
01bb:  3061  movlw   0x61
01bc:  00ad  movwf   0x2d
01bd:  30a8  movlw   0xa8
01be:  00ae  movwf   0x2e
01bf:  20d4  call    0x00d4
01c0:  01d2  clrf    0x52
01c1:  01d4  clrf    0x54
01c2:  3038  movlw   0x38
01c3:  0084  movwf   0x04
01c4:  3000  movlw   0x00
01c5:  20ca  call    0x00ca
01c6:  3055  movlw   0x55
01c7:  0084  movwf   0x04
01c8:  3020  movlw   0x20
01c9:  20c0  call    0x00c0
01ca:  20a6  call    0x00a6
01cb:  1683  bsf     0x03, 0x5
01cc:  3000  movlw   0x00
01cd:  0085  movwf   0x05
01ce:  3000  movlw   0x00
01cf:  0086  movwf   0x06
01d0:  1283  bcf     0x03, 0x5
01d1:  0064  clrwdt
01d2:  3020  movlw   0x20
01d3:  1683  bsf     0x03, 0x5
01d4:  0081  movwf   0x01
01d5:  1283  bcf     0x03, 0x5
01d6:  3006  movlw   0x06
01d7:  00ad  movwf   0x2d
01d8:  3082  movlw   0x82
01d9:  00ae  movwf   0x2e
01da:  3025  movlw   0x25
01db:  2068  call    0x0068
01dc:  20d4  call    0x00d4
01dd:  3030  movlw   0x30
01de:  00ad  movwf   0x2d
01df:  30d4  movlw   0xd4
01e0:  00ae  movwf   0x2e
01e1:  0ad1  incf    0x51, 0x1
01e2:  0ad2  incf    0x52, 0x1
01e3:  0832  movf    0x32, 0x0
01e4:  39c0  andlw   0xc0
01e5:  1d03  btfss   0x03, 0x2
01e6:  2a1d  goto    0x021d
01e7:  1ab2  btfsc   0x32, 0x5
01e8:  2a19  goto    0x0219
01e9:  1a32  btfsc   0x32, 0x4
01ea:  2a15  goto    0x0215
01eb:  19b2  btfsc   0x32, 0x3
01ec:  2a11  goto    0x0211
01ed:  1932  btfsc   0x32, 0x2
01ee:  2a0e  goto    0x020e
01ef:  18b2  btfsc   0x32, 0x1
01f0:  2a0e  goto    0x020e
01f1:  1832  btfsc   0x32, 0x0
01f2:  2a0e  goto    0x020e
01f3:  0833  movf    0x33, 0x0
01f4:  3c36  sublw   0x36
01f5:  1c03  btfss   0x03, 0x0
01f6:  2a0e  goto    0x020e
01f7:  0833  movf    0x33, 0x0
01f8:  3c05  sublw   0x05
01f9:  1c03  btfss   0x03, 0x0
01fa:  2a06  goto    0x0206
01fb:  29fc  goto    0x01fc
01fc:  206d  call    0x006d
01fd:  0ad2  incf    0x52, 0x1
01fe:  0ad2  incf    0x52, 0x1
01ff:  0ad2  incf    0x52, 0x1
0200:  30c3  movlw   0xc3
0201:  00ad  movwf   0x2d
0202:  3050  movlw   0x50
0203:  00ae  movwf   0x2e
0204:  3000  movlw   0x00
0205:  2a21  goto    0x0221
0206:  206d  call    0x006d
0207:  0ad2  incf    0x52, 0x1
0208:  3061  movlw   0x61
0209:  00ad  movwf   0x2d
020a:  30a8  movlw   0xa8
020b:  00ae  movwf   0x2e
020c:  3001  movlw   0x01
020d:  2a21  goto    0x0221
020e:  206d  call    0x006d
020f:  3002  movlw   0x02
0210:  2a21  goto    0x0221
0211:  3020  movlw   0x20
0212:  2068  call    0x0068
0213:  3003  movlw   0x03
0214:  2a21  goto    0x0221
0215:  3021  movlw   0x21
0216:  2068  call    0x0068
0217:  3004  movlw   0x04
0218:  2a21  goto    0x0221
0219:  3022  movlw   0x22
021a:  2068  call    0x0068
021b:  3005  movlw   0x05
021c:  2a21  goto    0x0221
021d:  3023  movlw   0x23
021e:  2068  call    0x0068
021f:  3006  movlw   0x06
0220:  2a21  goto    0x0221
0221:  00d0  movwf   0x50
0222:  20d4  call    0x00d4
0223:  1c55  btfss   0x55, 0x0
0224:  2a52  goto    0x0252
0225:  1854  btfsc   0x54, 0x0
0226:  20a6  call    0x00a6
0227:  0833  movf    0x33, 0x0
0228:  0253  subwf   0x53, 0x0
0229:  00af  movwf   0x2f
022a:  1faf  btfss   0x2f, 0x7
022b:  2a2e  goto    0x022e
022c:  09af  comf    0x2f, 0x1
022d:  0aaf  incf    0x2f, 0x1
022e:  082f  movf    0x2f, 0x0
022f:  3c0a  sublw   0x0a
0230:  1803  btfsc   0x03, 0x0
0231:  2a37  goto    0x0237
0232:  1054  bcf     0x54, 0x0
0233:  01d2  clrf    0x52
0234:  0833  movf    0x33, 0x0
0235:  00d3  movwf   0x53
0236:  2a52  goto    0x0252
0237:  1854  btfsc   0x54, 0x0
0238:  2a43  goto    0x0243
0239:  0852  movf    0x52, 0x0
023a:  3c3c  sublw   0x3c
023b:  1803  btfsc   0x03, 0x0
023c:  2a4c  goto    0x024c
023d:  300d  movlw   0x0d
023e:  00d2  movwf   0x52
023f:  1454  bsf     0x54, 0x0
0240:  0833  movf    0x33, 0x0
0241:  00d3  movwf   0x53
0242:  2a4e  goto    0x024e
0243:  0852  movf    0x52, 0x0
0244:  3c0e  sublw   0x0e
0245:  1803  btfsc   0x03, 0x0
0246:  2a4e  goto    0x024e
0247:  01d2  clrf    0x52
0248:  0833  movf    0x33, 0x0
0249:  00d3  movwf   0x53
024a:  01d2  clrf    0x52
024b:  2a52  goto    0x0252
024c:  1c54  btfss   0x54, 0x0
024d:  2a52  goto    0x0252
024e:  2077  call    0x0077
024f:  2077  call    0x0077
0250:  2077  call    0x0077
0251:  2a98  goto    0x0298
0252:  08d0  movf    0x50, 0x1
0253:  1903  btfsc   0x03, 0x2
0254:  2a5c  goto    0x025c
0255:  1003  bcf     0x03, 0x0
0256:  0db3  rlf     0x33, 0x1
0257:  0db2  rlf     0x32, 0x1
0258:  0db1  rlf     0x31, 0x1
0259:  0db0  rlf     0x30, 0x1
025a:  0bd0  decfsz  0x50, 0x1
025b:  2a55  goto    0x0255
025c:  0830  movf    0x30, 0x0
025d:  0431  iorwf   0x31, 0x0
025e:  0432  iorwf   0x32, 0x0
025f:  0433  iorwf   0x33, 0x0
0260:  1903  btfsc   0x03, 0x2
0261:  2a9b  goto    0x029b
0262:  1bb0  btfsc   0x30, 0x7
0263:  2aa6  goto    0x02a6
0264:  0830  movf    0x30, 0x0
0265:  00b4  movwf   0x34
0266:  0831  movf    0x31, 0x0
0267:  00b5  movwf   0x35
0268:  0832  movf    0x32, 0x0
0269:  00b6  movwf   0x36
026a:  0833  movf    0x33, 0x0
026b:  00b7  movwf   0x37
026c:  083b  movf    0x3b, 0x0
026d:  07b3  addwf   0x33, 0x1
026e:  083a  movf    0x3a, 0x0
026f:  1c03  btfss   0x03, 0x0
0270:  2a76  goto    0x0276
0271:  07b2  addwf   0x32, 0x1
0272:  0ab2  incf    0x32, 0x1
0273:  1903  btfsc   0x03, 0x2
0274:  1403  bsf     0x03, 0x0
0275:  2a77  goto    0x0277
0276:  07b2  addwf   0x32, 0x1
0277:  0839  movf    0x39, 0x0
0278:  1c03  btfss   0x03, 0x0
0279:  2a7f  goto    0x027f
027a:  07b1  addwf   0x31, 0x1
027b:  0ab1  incf    0x31, 0x1
027c:  1903  btfsc   0x03, 0x2
027d:  1403  bsf     0x03, 0x0
027e:  2a80  goto    0x0280
027f:  07b1  addwf   0x31, 0x1
0280:  0838  movf    0x38, 0x0
0281:  1c03  btfss   0x03, 0x0
0282:  2a88  goto    0x0288
0283:  07b0  addwf   0x30, 0x1
0284:  0ab0  incf    0x30, 0x1
0285:  1903  btfsc   0x03, 0x2
0286:  1403  bsf     0x03, 0x0
0287:  2a89  goto    0x0289
0288:  07b0  addwf   0x30, 0x1
0289:  1fb0  btfss   0x30, 0x7
028a:  2a97  goto    0x0297
028b:  09b0  comf    0x30, 0x1
028c:  09b1  comf    0x31, 0x1
028d:  09b2  comf    0x32, 0x1
028e:  09b3  comf    0x33, 0x1
028f:  0fb3  incfsz  0x33, 0x1
0290:  2a97  goto    0x0297
0291:  0fb2  incfsz  0x32, 0x1
0292:  2a97  goto    0x0297
0293:  0fb1  incfsz  0x31, 0x1
0294:  2a97  goto    0x0297
0295:  0fb0  incfsz  0x30, 0x1
0296:  2a97  goto    0x0297
0297:  2125  call    0x0125
0298:  1e85  btfss   0x05, 0x5
0299:  2b3a  goto    0x033a
029a:  29cb  goto    0x01cb
029b:  3013  movlw   0x13
029c:  2083  call    0x0083
029d:  3013  movlw   0x13
029e:  208a  call    0x008a
029f:  3013  movlw   0x13
02a0:  2091  call    0x0091
02a1:  3000  movlw   0x00
02a2:  2098  call    0x0098
02a3:  3013  movlw   0x13
02a4:  209f  call    0x009f
02a5:  2a98  goto    0x0298
02a6:  3013  movlw   0x13
02a7:  2083  call    0x0083
02a8:  3013  movlw   0x13
02a9:  208a  call    0x008a
02aa:  3013  movlw   0x13
02ab:  2091  call    0x0091
02ac:  300e  movlw   0x0e
02ad:  2098  call    0x0098
02ae:  3013  movlw   0x13
02af:  209f  call    0x009f
02b0:  29cb  goto    0x01cb
02b1:  3013  movlw   0x13
02b2:  00ad  movwf   0x2d
02b3:  3088  movlw   0x88
02b4:  00ae  movwf   0x2e
02b5:  28d4  goto    0x00d4
02b6:  3018  movlw   0x18
02b7:  2083  call    0x0083
02b8:  3019  movlw   0x19
02b9:  208a  call    0x008a
02ba:  3012  movlw   0x12
02bb:  2091  call    0x0091
02bc:  301a  movlw   0x1a
02bd:  2098  call    0x0098
02be:  3013  movlw   0x13
02bf:  209f  call    0x009f
02c0:  2ab1  goto    0x02b1
02c1:  1c55  btfss   0x55, 0x0
02c2:  2acd  goto    0x02cd
02c3:  3015  movlw   0x15
02c4:  2083  call    0x0083
02c5:  301b  movlw   0x1b
02c6:  208a  call    0x008a
02c7:  300a  movlw   0x0a
02c8:  2091  call    0x0091
02c9:  3022  movlw   0x22
02ca:  2098  call    0x0098
02cb:  300e  movlw   0x0e
02cc:  2abf  goto    0x02bf
02cd:  3021  movlw   0x21
02ce:  2083  call    0x0083
02cf:  3017  movlw   0x17
02d0:  208a  call    0x008a
02d1:  3015  movlw   0x15
02d2:  2091  call    0x0091
02d3:  301b  movlw   0x1b
02d4:  2098  call    0x0098
02d5:  3022  movlw   0x22
02d6:  2abf  goto    0x02bf
02d7:  300a  movlw   0x0a
02d8:  2083  call    0x0083
02d9:  300d  movlw   0x0d
02da:  208a  call    0x008a
02db:  300d  movlw   0x0d
02dc:  2091  call    0x0091
02dd:  3013  movlw   0x13
02de:  2abd  goto    0x02bd
02df:  301b  movlw   0x1b
02e0:  2083  call    0x0083
02e1:  3019  movlw   0x19
02e2:  208a  call    0x008a
02e3:  300b  movlw   0x0b
02e4:  2091  call    0x0091
02e5:  3013  movlw   0x13
02e6:  2abd  goto    0x02bd
02e7:  301c  movlw   0x1c
02e8:  2083  call    0x0083
02e9:  300e  movlw   0x0e
02ea:  208a  call    0x008a
02eb:  3016  movlw   0x16
02ec:  2091  call    0x0091
02ed:  3017  movlw   0x17
02ee:  2abd  goto    0x02bd
02ef:  301a  movlw   0x1a
02f0:  2083  call    0x0083
02f1:  300a  movlw   0x0a
02f2:  208a  call    0x008a
02f3:  300b  movlw   0x0b
02f4:  2091  call    0x0091
02f5:  3020  movlw   0x20
02f6:  2098  call    0x0098
02f7:  300e  movlw   0x0e
02f8:  209f  call    0x009f
02f9:  2ab1  goto    0x02b1
02fa:  3004  movlw   0x04
02fb:  2b04  goto    0x0304
02fc:  3008  movlw   0x08
02fd:  2b04  goto    0x0304
02fe:  300c  movlw   0x0c
02ff:  2b04  goto    0x0304
0300:  3010  movlw   0x10
0301:  2b04  goto    0x0304
0302:  3014  movlw   0x14
0303:  2b04  goto    0x0304
0304:  00af  movwf   0x2f
0305:  3034  movlw   0x34
0306:  0084  movwf   0x04
0307:  082f  movf    0x2f, 0x0
0308:  20ca  call    0x00ca
0309:  3034  movlw   0x34
030a:  0084  movwf   0x04
030b:  2119  call    0x0119
030c:  2ab1  goto    0x02b1
030d:  29c0  goto    0x01c0
030e:  3001  movlw   0x01
030f:  06d5  xorwf   0x55, 0x1
0310:  3055  movlw   0x55
0311:  0084  movwf   0x04
0312:  3020  movlw   0x20
0313:  20ad  call    0x00ad
0314:  2ab1  goto    0x02b1
0315:  3034  movlw   0x34
0316:  0084  movwf   0x04
0317:  3000  movlw   0x00
0318:  20ad  call    0x00ad
0319:  0a84  incf    0x04, 0x1
031a:  3001  movlw   0x01
031b:  20ad  call    0x00ad
031c:  0a84  incf    0x04, 0x1
031d:  3002  movlw   0x02
031e:  20ad  call    0x00ad
031f:  0a84  incf    0x04, 0x1
0320:  3003  movlw   0x03
0321:  20ad  call    0x00ad
0322:  29c0  goto    0x01c0
0323:  09b4  comf    0x34, 0x1
0324:  09b5  comf    0x35, 0x1
0325:  09b6  comf    0x36, 0x1
0326:  09b7  comf    0x37, 0x1
0327:  0fb7  incfsz  0x37, 0x1
0328:  2b2f  goto    0x032f
0329:  0fb6  incfsz  0x36, 0x1
032a:  2b2f  goto    0x032f
032b:  0fb5  incfsz  0x35, 0x1
032c:  2b2f  goto    0x032f
032d:  0fb4  incfsz  0x34, 0x1
032e:  2b2f  goto    0x032f
032f:  2b15  goto    0x0315
0330:  01b4  clrf    0x34
0331:  01b5  clrf    0x35
0332:  01b6  clrf    0x36
0333:  01b7  clrf    0x37
0334:  2b15  goto    0x0315
0335:  3006  movlw   0x06
0336:  00bc  movwf   0x3c
0337:  2b48  goto    0x0348
0338:  3002  movlw   0x02
0339:  2b36  goto    0x0336
033a:  01bc  clrf    0x3c
033b:  3015  movlw   0x15
033c:  2083  call    0x0083
033d:  3016  movlw   0x16
033e:  208a  call    0x008a
033f:  3017  movlw   0x17
0340:  2091  call    0x0091
0341:  3010  movlw   0x10
0342:  2098  call    0x0098
0343:  3013  movlw   0x13
0344:  209f  call    0x009f
0345:  22b1  call    0x02b1
0346:  1e85  btfss   0x05, 0x5
0347:  2b45  goto    0x0345
0348:  0ad1  incf    0x51, 0x1
0349:  204d  call    0x004d
034a:  1a85  btfsc   0x05, 0x5
034b:  2b48  goto    0x0348
034c:  300a  movlw   0x0a
034d:  00bd  movwf   0x3d
034e:  1a85  btfsc   0x05, 0x5
034f:  2b59  goto    0x0359
0350:  22b1  call    0x02b1
0351:  0bbd  decfsz  0x3d, 0x1
0352:  2b4e  goto    0x034e
0353:  20a6  call    0x00a6
0354:  22b1  call    0x02b1
0355:  204d  call    0x004d
0356:  1e85  btfss   0x05, 0x5
0357:  2b53  goto    0x0353
0358:  285b  goto    0x005b
0359:  083c  movf    0x3c, 0x0
035a:  3c05  sublw   0x05
035b:  1903  btfsc   0x03, 0x2
035c:  2b61  goto    0x0361
035d:  1c03  btfss   0x03, 0x0
035e:  2b63  goto    0x0363
035f:  0abc  incf    0x3c, 0x1
0360:  2b48  goto    0x0348
0361:  01bc  clrf    0x3c
0362:  2b48  goto    0x0348
0363:  083c  movf    0x3c, 0x0
0364:  3c0a  sublw   0x0a
0365:  1903  btfsc   0x03, 0x2
0366:  2b6b  goto    0x036b
0367:  1c03  btfss   0x03, 0x0
0368:  2b6e  goto    0x036e
0369:  0abc  incf    0x3c, 0x1
036a:  2b48  goto    0x0348
036b:  3006  movlw   0x06
036c:  00bc  movwf   0x3c
036d:  2b48  goto    0x0348
036e:  01bc  clrf    0x3c
036f:  2b48  goto    0x0348
2000:  0001  dw      0x0001
2001:  0002  dw      0x0002
2002:  0003  dw      0x0003
2003:  0004  dw      0x0004
2007:  3f06  dw      0x3f06
2100:  00    db      0x00
2101:  00    db      0x00
2102:  00    db      0x00
2103:  00    db      0x00
2104:  00    db      0x00
2105:  00    db      0x00
2106:  00    db      0x00
2107:  00    db      0x00
2108:  00    db      0x00
2109:  00    db      0x00
210a:  06    db      0x06
210b:  00    db      0x00
210c:  f1    db      0xf1
210d:  00    db      0x00
210e:  58    db      0x58                                   ; 'X'
210f:  00    db      0x00
2110:  00    db      0x00
2111:  00    db      0x00
2112:  3d    db      0x3d                                   ; '='
2113:  00    db      0x00
2114:  05    db      0x05
2115:  00    db      0x00
2116:  18    db      0x18
2117:  00    db      0x00
2118:  00    db      0x00
2119:  00    db      0x00
211a:  40    db      0x40                                   ; '@'
211b:  00    db      0x00
211c:  00    db      0x00
211d:  00    db      0x00
211e:  00    db      0x00
211f:  00    db      0x00
2120:  00    db      0x00
2121:  00    db      0x00
2122:  43    db      0x43                                   ; 'C'
2123:  00    db      0x00
2124:  a6    db      0xa6
2125:  00    db      0x00
2126:  d3    db      0xd3
2127:  00    db      0x00
2128:  00    db      0x00
2129:  00    db      0x00
212a:  a3    db      0xa3
212b:  00    db      0x00
212c:  44    db      0x44                                   ; 'D'
212d:  00    db      0x00
212e:  e0    db      0xe0
212f:  00    db      0x00
2140:  00    db      0x00
2141:  00    db      0x00
