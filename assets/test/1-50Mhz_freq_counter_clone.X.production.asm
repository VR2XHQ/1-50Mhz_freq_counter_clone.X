0000:  2e31  goto    0x0631
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
004f:  2f46  goto    0x0746
0050:  2f51  goto    0x0751
0051:  2f67  goto    0x0767
0052:  2f6f  goto    0x076f
0053:  2f77  goto    0x0777
0054:  2f7f  goto    0x077f
0055:  2f8a  goto    0x078a
0056:  2f8c  goto    0x078c
0057:  2f8e  goto    0x078e
0058:  2f90  goto    0x0790
0059:  2f92  goto    0x0792
005a:  2f46  goto    0x0746
005b:  083c  movf    0x3c, 0x0
005c:  0782  addwf   0x02, 0x1
005d:  2f9d  goto    0x079d
005e:  2f9e  goto    0x079e
005f:  2fa5  goto    0x07a5
0060:  2fb3  goto    0x07b3
0061:  2fc0  goto    0x07c0
0062:  2fc5  goto    0x07c5
0063:  2fc8  goto    0x07c8
0064:  2fc8  goto    0x07c8
0065:  2fc8  goto    0x07c8
0066:  2fc8  goto    0x07c8
0067:  2f9d  goto    0x079d
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
007f:  1683  bsf     0x03, 0x5
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
0631:  3000  movlw   0x00
0632:  1683  bsf     0x03, 0x5
0633:  0085  movwf   0x05
0634:  1283  bcf     0x03, 0x5
0635:  0185  clrf    0x05
0636:  3000  movlw   0x00
0637:  1683  bsf     0x03, 0x5
0638:  0086  movwf   0x06
0639:  1283  bcf     0x03, 0x5
063a:  0186  clrf    0x06
063b:  01ce  clrf    0x4e
063c:  01cf  clrf    0x4f
063d:  3013  movlw   0x13
063e:  00c8  movwf   0x48
063f:  3014  movlw   0x14
0640:  2083  call    0x0083
0641:  3014  movlw   0x14
0642:  208a  call    0x008a
0643:  3014  movlw   0x14
0644:  2091  call    0x0091
0645:  3014  movlw   0x14
0646:  2098  call    0x0098
0647:  3014  movlw   0x14
0648:  209f  call    0x009f
0649:  3027  movlw   0x27
064a:  2068  call    0x0068
064b:  3061  movlw   0x61
064c:  00ad  movwf   0x2d
064d:  30a8  movlw   0xa8
064e:  00ae  movwf   0x2e
064f:  20d4  call    0x00d4
0650:  01d2  clrf    0x52
0651:  01d4  clrf    0x54
0652:  3038  movlw   0x38
0653:  0084  movwf   0x04
0654:  3000  movlw   0x00
0655:  20ca  call    0x00ca
0656:  3055  movlw   0x55
0657:  0084  movwf   0x04
0658:  3020  movlw   0x20
0659:  20c0  call    0x00c0
065a:  20a6  call    0x00a6
065b:  1683  bsf     0x03, 0x5
065c:  3000  movlw   0x00
065d:  0085  movwf   0x05
065e:  3000  movlw   0x00
065f:  0086  movwf   0x06
0660:  1283  bcf     0x03, 0x5
0661:  0064  clrwdt
0662:  3020  movlw   0x20
0663:  1683  bsf     0x03, 0x5
0664:  0081  movwf   0x01
0665:  1283  bcf     0x03, 0x5
0666:  3006  movlw   0x06
0667:  00ad  movwf   0x2d
0668:  3082  movlw   0x82
0669:  00ae  movwf   0x2e
066a:  3025  movlw   0x25
066b:  2068  call    0x0068
066c:  20d4  call    0x00d4
066d:  3030  movlw   0x30
066e:  00ad  movwf   0x2d
066f:  30d4  movlw   0xd4
0670:  00ae  movwf   0x2e
0671:  0ad1  incf    0x51, 0x1
0672:  0ad2  incf    0x52, 0x1
0673:  0832  movf    0x32, 0x0
0674:  39c0  andlw   0xc0
0675:  1d03  btfss   0x03, 0x2
0676:  2ead  goto    0x06ad
0677:  1ab2  btfsc   0x32, 0x5
0678:  2ea9  goto    0x06a9
0679:  1a32  btfsc   0x32, 0x4
067a:  2ea5  goto    0x06a5
067b:  19b2  btfsc   0x32, 0x3
067c:  2ea1  goto    0x06a1
067d:  1932  btfsc   0x32, 0x2
067e:  2e9e  goto    0x069e
067f:  18b2  btfsc   0x32, 0x1
0680:  2e9e  goto    0x069e
0681:  1832  btfsc   0x32, 0x0
0682:  2e9e  goto    0x069e
0683:  0833  movf    0x33, 0x0
0684:  3c36  sublw   0x36
0685:  1c03  btfss   0x03, 0x0
0686:  2e9e  goto    0x069e
0687:  0833  movf    0x33, 0x0
0688:  3c05  sublw   0x05
0689:  1c03  btfss   0x03, 0x0
068a:  2e96  goto    0x0696
068b:  2e8c  goto    0x068c
068c:  206d  call    0x006d
068d:  0ad2  incf    0x52, 0x1
068e:  0ad2  incf    0x52, 0x1
068f:  0ad2  incf    0x52, 0x1
0690:  30c3  movlw   0xc3
0691:  00ad  movwf   0x2d
0692:  3050  movlw   0x50
0693:  00ae  movwf   0x2e
0694:  3000  movlw   0x00
0695:  2eb1  goto    0x06b1
0696:  206d  call    0x006d
0697:  0ad2  incf    0x52, 0x1
0698:  3061  movlw   0x61
0699:  00ad  movwf   0x2d
069a:  30a8  movlw   0xa8
069b:  00ae  movwf   0x2e
069c:  3001  movlw   0x01
069d:  2eb1  goto    0x06b1
069e:  206d  call    0x006d
069f:  3002  movlw   0x02
06a0:  2eb1  goto    0x06b1
06a1:  3020  movlw   0x20
06a2:  2068  call    0x0068
06a3:  3003  movlw   0x03
06a4:  2eb1  goto    0x06b1
06a5:  3021  movlw   0x21
06a6:  2068  call    0x0068
06a7:  3004  movlw   0x04
06a8:  2eb1  goto    0x06b1
06a9:  3022  movlw   0x22
06aa:  2068  call    0x0068
06ab:  3005  movlw   0x05
06ac:  2eb1  goto    0x06b1
06ad:  3023  movlw   0x23
06ae:  2068  call    0x0068
06af:  3006  movlw   0x06
06b0:  2eb1  goto    0x06b1
06b1:  00d0  movwf   0x50
06b2:  20d4  call    0x00d4
06b3:  1c55  btfss   0x55, 0x0
06b4:  2ee2  goto    0x06e2
06b5:  1854  btfsc   0x54, 0x0
06b6:  20a6  call    0x00a6
06b7:  0833  movf    0x33, 0x0
06b8:  0253  subwf   0x53, 0x0
06b9:  00af  movwf   0x2f
06ba:  1faf  btfss   0x2f, 0x7
06bb:  2ebe  goto    0x06be
06bc:  09af  comf    0x2f, 0x1
06bd:  0aaf  incf    0x2f, 0x1
06be:  082f  movf    0x2f, 0x0
06bf:  3c0a  sublw   0x0a
06c0:  1803  btfsc   0x03, 0x0
06c1:  2ec7  goto    0x06c7
06c2:  1054  bcf     0x54, 0x0
06c3:  01d2  clrf    0x52
06c4:  0833  movf    0x33, 0x0
06c5:  00d3  movwf   0x53
06c6:  2ee2  goto    0x06e2
06c7:  1854  btfsc   0x54, 0x0
06c8:  2ed3  goto    0x06d3
06c9:  0852  movf    0x52, 0x0
06ca:  3c3c  sublw   0x3c
06cb:  1803  btfsc   0x03, 0x0
06cc:  2edc  goto    0x06dc
06cd:  300d  movlw   0x0d
06ce:  00d2  movwf   0x52
06cf:  1454  bsf     0x54, 0x0
06d0:  0833  movf    0x33, 0x0
06d1:  00d3  movwf   0x53
06d2:  2ede  goto    0x06de
06d3:  0852  movf    0x52, 0x0
06d4:  3c0e  sublw   0x0e
06d5:  1803  btfsc   0x03, 0x0
06d6:  2ede  goto    0x06de
06d7:  01d2  clrf    0x52
06d8:  0833  movf    0x33, 0x0
06d9:  00d3  movwf   0x53
06da:  01d2  clrf    0x52
06db:  2ee2  goto    0x06e2
06dc:  1c54  btfss   0x54, 0x0
06dd:  2ee2  goto    0x06e2
06de:  2077  call    0x0077
06df:  2077  call    0x0077
06e0:  2077  call    0x0077
06e1:  2f28  goto    0x0728
06e2:  08d0  movf    0x50, 0x1
06e3:  1903  btfsc   0x03, 0x2
06e4:  2eec  goto    0x06ec
06e5:  1003  bcf     0x03, 0x0
06e6:  0db3  rlf     0x33, 0x1
06e7:  0db2  rlf     0x32, 0x1
06e8:  0db1  rlf     0x31, 0x1
06e9:  0db0  rlf     0x30, 0x1
06ea:  0bd0  decfsz  0x50, 0x1
06eb:  2ee5  goto    0x06e5
06ec:  0830  movf    0x30, 0x0
06ed:  0431  iorwf   0x31, 0x0
06ee:  0432  iorwf   0x32, 0x0
06ef:  0433  iorwf   0x33, 0x0
06f0:  1903  btfsc   0x03, 0x2
06f1:  2f2b  goto    0x072b
06f2:  1bb0  btfsc   0x30, 0x7
06f3:  2f36  goto    0x0736
06f4:  0830  movf    0x30, 0x0
06f5:  00b4  movwf   0x34
06f6:  0831  movf    0x31, 0x0
06f7:  00b5  movwf   0x35
06f8:  0832  movf    0x32, 0x0
06f9:  00b6  movwf   0x36
06fa:  0833  movf    0x33, 0x0
06fb:  00b7  movwf   0x37
06fc:  083b  movf    0x3b, 0x0
06fd:  07b3  addwf   0x33, 0x1
06fe:  083a  movf    0x3a, 0x0
06ff:  1c03  btfss   0x03, 0x0
0700:  2f06  goto    0x0706
0701:  07b2  addwf   0x32, 0x1
0702:  0ab2  incf    0x32, 0x1
0703:  1903  btfsc   0x03, 0x2
0704:  1403  bsf     0x03, 0x0
0705:  2f07  goto    0x0707
0706:  07b2  addwf   0x32, 0x1
0707:  0839  movf    0x39, 0x0
0708:  1c03  btfss   0x03, 0x0
0709:  2f0f  goto    0x070f
070a:  07b1  addwf   0x31, 0x1
070b:  0ab1  incf    0x31, 0x1
070c:  1903  btfsc   0x03, 0x2
070d:  1403  bsf     0x03, 0x0
070e:  2f10  goto    0x0710
070f:  07b1  addwf   0x31, 0x1
0710:  0838  movf    0x38, 0x0
0711:  1c03  btfss   0x03, 0x0
0712:  2f18  goto    0x0718
0713:  07b0  addwf   0x30, 0x1
0714:  0ab0  incf    0x30, 0x1
0715:  1903  btfsc   0x03, 0x2
0716:  1403  bsf     0x03, 0x0
0717:  2f19  goto    0x0719
0718:  07b0  addwf   0x30, 0x1
0719:  1fb0  btfss   0x30, 0x7
071a:  2f27  goto    0x0727
071b:  09b0  comf    0x30, 0x1
071c:  09b1  comf    0x31, 0x1
071d:  09b2  comf    0x32, 0x1
071e:  09b3  comf    0x33, 0x1
071f:  0fb3  incfsz  0x33, 0x1
0720:  2f27  goto    0x0727
0721:  0fb2  incfsz  0x32, 0x1
0722:  2f27  goto    0x0727
0723:  0fb1  incfsz  0x31, 0x1
0724:  2f27  goto    0x0727
0725:  0fb0  incfsz  0x30, 0x1
0726:  2f27  goto    0x0727
0727:  2125  call    0x0125
0728:  1e85  btfss   0x05, 0x5
0729:  2fca  goto    0x07ca
072a:  2e5b  goto    0x065b
072b:  3013  movlw   0x13
072c:  2083  call    0x0083
072d:  3013  movlw   0x13
072e:  208a  call    0x008a
072f:  3013  movlw   0x13
0730:  2091  call    0x0091
0731:  3000  movlw   0x00
0732:  2098  call    0x0098
0733:  3013  movlw   0x13
0734:  209f  call    0x009f
0735:  2f28  goto    0x0728
0736:  3013  movlw   0x13
0737:  2083  call    0x0083
0738:  3013  movlw   0x13
0739:  208a  call    0x008a
073a:  3013  movlw   0x13
073b:  2091  call    0x0091
073c:  300e  movlw   0x0e
073d:  2098  call    0x0098
073e:  3013  movlw   0x13
073f:  209f  call    0x009f
0740:  2e5b  goto    0x065b
0741:  3013  movlw   0x13
0742:  00ad  movwf   0x2d
0743:  3088  movlw   0x88
0744:  00ae  movwf   0x2e
0745:  28d4  goto    0x00d4
0746:  3018  movlw   0x18
0747:  2083  call    0x0083
0748:  3019  movlw   0x19
0749:  208a  call    0x008a
074a:  3012  movlw   0x12
074b:  2091  call    0x0091
074c:  301a  movlw   0x1a
074d:  2098  call    0x0098
074e:  3013  movlw   0x13
074f:  209f  call    0x009f
0750:  2f41  goto    0x0741
0751:  1c55  btfss   0x55, 0x0
0752:  2f5d  goto    0x075d
0753:  3015  movlw   0x15
0754:  2083  call    0x0083
0755:  301b  movlw   0x1b
0756:  208a  call    0x008a
0757:  300a  movlw   0x0a
0758:  2091  call    0x0091
0759:  3022  movlw   0x22
075a:  2098  call    0x0098
075b:  300e  movlw   0x0e
075c:  2f4f  goto    0x074f
075d:  3021  movlw   0x21
075e:  2083  call    0x0083
075f:  3017  movlw   0x17
0760:  208a  call    0x008a
0761:  3015  movlw   0x15
0762:  2091  call    0x0091
0763:  301b  movlw   0x1b
0764:  2098  call    0x0098
0765:  3022  movlw   0x22
0766:  2f4f  goto    0x074f
0767:  300a  movlw   0x0a
0768:  2083  call    0x0083
0769:  300d  movlw   0x0d
076a:  208a  call    0x008a
076b:  300d  movlw   0x0d
076c:  2091  call    0x0091
076d:  3013  movlw   0x13
076e:  2f4d  goto    0x074d
076f:  301b  movlw   0x1b
0770:  2083  call    0x0083
0771:  3019  movlw   0x19
0772:  208a  call    0x008a
0773:  300b  movlw   0x0b
0774:  2091  call    0x0091
0775:  3013  movlw   0x13
0776:  2f4d  goto    0x074d
0777:  301c  movlw   0x1c
0778:  2083  call    0x0083
0779:  300e  movlw   0x0e
077a:  208a  call    0x008a
077b:  3016  movlw   0x16
077c:  2091  call    0x0091
077d:  3017  movlw   0x17
077e:  2f4d  goto    0x074d
077f:  301a  movlw   0x1a
0780:  2083  call    0x0083
0781:  300a  movlw   0x0a
0782:  208a  call    0x008a
0783:  300b  movlw   0x0b
0784:  2091  call    0x0091
0785:  3020  movlw   0x20
0786:  2098  call    0x0098
0787:  300e  movlw   0x0e
0788:  209f  call    0x009f
0789:  2f41  goto    0x0741
078a:  3004  movlw   0x04
078b:  2f94  goto    0x0794
078c:  3008  movlw   0x08
078d:  2f94  goto    0x0794
078e:  300c  movlw   0x0c
078f:  2f94  goto    0x0794
0790:  3010  movlw   0x10
0791:  2f94  goto    0x0794
0792:  3014  movlw   0x14
0793:  2f94  goto    0x0794
0794:  00af  movwf   0x2f
0795:  3034  movlw   0x34
0796:  0084  movwf   0x04
0797:  082f  movf    0x2f, 0x0
0798:  20ca  call    0x00ca
0799:  3034  movlw   0x34
079a:  0084  movwf   0x04
079b:  2119  call    0x0119
079c:  2f41  goto    0x0741
079d:  2e50  goto    0x0650
079e:  3001  movlw   0x01
079f:  06d5  xorwf   0x55, 0x1
07a0:  3055  movlw   0x55
07a1:  0084  movwf   0x04
07a2:  3020  movlw   0x20
07a3:  20ad  call    0x00ad
07a4:  2f41  goto    0x0741
07a5:  3034  movlw   0x34
07a6:  0084  movwf   0x04
07a7:  3000  movlw   0x00
07a8:  20ad  call    0x00ad
07a9:  0a84  incf    0x04, 0x1
07aa:  3001  movlw   0x01
07ab:  20ad  call    0x00ad
07ac:  0a84  incf    0x04, 0x1
07ad:  3002  movlw   0x02
07ae:  20ad  call    0x00ad
07af:  0a84  incf    0x04, 0x1
07b0:  3003  movlw   0x03
07b1:  20ad  call    0x00ad
07b2:  2e50  goto    0x0650
07b3:  09b4  comf    0x34, 0x1
07b4:  09b5  comf    0x35, 0x1
07b5:  09b6  comf    0x36, 0x1
07b6:  09b7  comf    0x37, 0x1
07b7:  0fb7  incfsz  0x37, 0x1
07b8:  2fbf  goto    0x07bf
07b9:  0fb6  incfsz  0x36, 0x1
07ba:  2fbf  goto    0x07bf
07bb:  0fb5  incfsz  0x35, 0x1
07bc:  2fbf  goto    0x07bf
07bd:  0fb4  incfsz  0x34, 0x1
07be:  2fbf  goto    0x07bf
07bf:  2fa5  goto    0x07a5
07c0:  01b4  clrf    0x34
07c1:  01b5  clrf    0x35
07c2:  01b6  clrf    0x36
07c3:  01b7  clrf    0x37
07c4:  2fa5  goto    0x07a5
07c5:  3006  movlw   0x06
07c6:  00bc  movwf   0x3c
07c7:  2fd8  goto    0x07d8
07c8:  3002  movlw   0x02
07c9:  2fc6  goto    0x07c6
07ca:  01bc  clrf    0x3c
07cb:  3015  movlw   0x15
07cc:  2083  call    0x0083
07cd:  3016  movlw   0x16
07ce:  208a  call    0x008a
07cf:  3017  movlw   0x17
07d0:  2091  call    0x0091
07d1:  3010  movlw   0x10
07d2:  2098  call    0x0098
07d3:  3013  movlw   0x13
07d4:  209f  call    0x009f
07d5:  2741  call    0x0741
07d6:  1e85  btfss   0x05, 0x5
07d7:  2fd5  goto    0x07d5
07d8:  0ad1  incf    0x51, 0x1
07d9:  204d  call    0x004d
07da:  1a85  btfsc   0x05, 0x5
07db:  2fd8  goto    0x07d8
07dc:  300a  movlw   0x0a
07dd:  00bd  movwf   0x3d
07de:  1a85  btfsc   0x05, 0x5
07df:  2fe9  goto    0x07e9
07e0:  2741  call    0x0741
07e1:  0bbd  decfsz  0x3d, 0x1
07e2:  2fde  goto    0x07de
07e3:  20a6  call    0x00a6
07e4:  2741  call    0x0741
07e5:  204d  call    0x004d
07e6:  1e85  btfss   0x05, 0x5
07e7:  2fe3  goto    0x07e3
07e8:  285b  goto    0x005b
07e9:  083c  movf    0x3c, 0x0
07ea:  3c05  sublw   0x05
07eb:  1903  btfsc   0x03, 0x2
07ec:  2ff1  goto    0x07f1
07ed:  1c03  btfss   0x03, 0x0
07ee:  2ff3  goto    0x07f3
07ef:  0abc  incf    0x3c, 0x1
07f0:  2fd8  goto    0x07d8
07f1:  01bc  clrf    0x3c
07f2:  2fd8  goto    0x07d8
07f3:  083c  movf    0x3c, 0x0
07f4:  3c0a  sublw   0x0a
07f5:  1903  btfsc   0x03, 0x2
07f6:  2ffb  goto    0x07fb
07f7:  1c03  btfss   0x03, 0x0
07f8:  2ffe  goto    0x07fe
07f9:  0abc  incf    0x3c, 0x1
07fa:  2fd8  goto    0x07d8
07fb:  3006  movlw   0x06
07fc:  00bc  movwf   0x3c
07fd:  2fd8  goto    0x07d8
07fe:  01bc  clrf    0x3c
07ff:  2fd8  goto    0x07d8
2000:  0042  dw      0x0042
2001:  0001  dw      0x0001
2002:  0025  dw      0x0025
2003:  007f  dw      0x007f
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
211a:  a3    db      0xa3
211b:  00    db      0x00
211c:  44    db      0x44                                   ; 'D'
211d:  00    db      0x00
211e:  e0    db      0xe0
211f:  00    db      0x00
2120:  00    db      0x00
2121:  00    db      0x00
2122:  a3    db      0xa3
2123:  00    db      0x00
2124:  31    db      0x31                                   ; '1'
2125:  00    db      0x00
2126:  58    db      0x58                                   ; 'X'
2127:  00    db      0x00
2128:  00    db      0x00
2129:  00    db      0x00
212a:  bc    db      0xbc
212b:  00    db      0x00
212c:  61    db      0x61                                   ; 'a'
212d:  00    db      0x00
212e:  4e    db      0x4e                                   ; 'N'
212f:  00    db      0x00
2130:  00    db      0x00
2131:  00    db      0x00
