0000:  2e34  goto    0x0634
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
004f:  2f44  goto    0x0744
0050:  2f4f  goto    0x074f
0051:  2f65  goto    0x0765
0052:  2f6d  goto    0x076d
0053:  2f75  goto    0x0775
0054:  2f7d  goto    0x077d
0055:  2f88  goto    0x0788
0056:  2f8a  goto    0x078a
0057:  2f8c  goto    0x078c
0058:  2f8e  goto    0x078e
0059:  2f90  goto    0x0790
005a:  2f92  goto    0x0792
005b:  2f44  goto    0x0744
005c:  083c  movf    0x3c, 0x0
005d:  0782  addwf   0x02, 0x1
005e:  2f9d  goto    0x079d
005f:  2f9e  goto    0x079e
0060:  2fa5  goto    0x07a5
0061:  2fb3  goto    0x07b3
0062:  2fc0  goto    0x07c0
0063:  2fc5  goto    0x07c5
0064:  2fc8  goto    0x07c8
0065:  2fc8  goto    0x07c8
0066:  2fc8  goto    0x07c8
0067:  2fc8  goto    0x07c8
0068:  2fc8  goto    0x07c8
0069:  2f9d  goto    0x079d
006a:  0064  clrwdt
006b:  1683  bsf     0x03, 0x5
006c:  0081  movwf   0x01
006d:  1283  bcf     0x03, 0x5
006e:  3400  retlw   0x00
006f:  0064  clrwdt
0070:  0181  clrf    0x01
0071:  1683  bsf     0x03, 0x5
0072:  3027  movlw   0x27
0073:  0081  movwf   0x01
0074:  0064  clrwdt
0075:  302f  movlw   0x2f
0076:  0081  movwf   0x01
0077:  1283  bcf     0x03, 0x5
0078:  3400  retlw   0x00
0079:  3000  movlw   0x00
007a:  0086  movwf   0x06
007b:  018b  clrf    0x0b
007c:  0064  clrwdt
007d:  0181  clrf    0x01
007e:  1683  bsf     0x03, 0x5
007f:  302b  movlw   0x2b
0080:  0081  movwf   0x01
0081:  1283  bcf     0x03, 0x5
0082:  0063  sleep
0083:  0000  nop
0084:  0008  return
0085:  00c9  movwf   0x49
0086:  397f  andlw   0x7f
0087:  2001  call    0x0001
0088:  1bc9  btfsc   0x49, 0x7
0089:  3802  iorlw   0x02
008a:  00c9  movwf   0x49
008b:  3400  retlw   0x00
008c:  00ca  movwf   0x4a
008d:  397f  andlw   0x7f
008e:  2001  call    0x0001
008f:  1bca  btfsc   0x4a, 0x7
0090:  3802  iorlw   0x02
0091:  00ca  movwf   0x4a
0092:  3400  retlw   0x00
0093:  00cb  movwf   0x4b
0094:  397f  andlw   0x7f
0095:  2001  call    0x0001
0096:  1bcb  btfsc   0x4b, 0x7
0097:  3802  iorlw   0x02
0098:  00cb  movwf   0x4b
0099:  3400  retlw   0x00
009a:  00cc  movwf   0x4c
009b:  397f  andlw   0x7f
009c:  2001  call    0x0001
009d:  1bcc  btfsc   0x4c, 0x7
009e:  3802  iorlw   0x02
009f:  00cc  movwf   0x4c
00a0:  3400  retlw   0x00
00a1:  00cd  movwf   0x4d
00a2:  397f  andlw   0x7f
00a3:  2001  call    0x0001
00a4:  1bcd  btfsc   0x4d, 0x7
00a5:  3802  iorlw   0x02
00a6:  00cd  movwf   0x4d
00a7:  3400  retlw   0x00
00a8:  3000  movlw   0x00
00a9:  00c9  movwf   0x49
00aa:  00ca  movwf   0x4a
00ab:  00cb  movwf   0x4b
00ac:  00cc  movwf   0x4c
00ad:  00cd  movwf   0x4d
00ae:  3400  retlw   0x00
00af:  138b  bcf     0x0b, 0x7
00b0:  1683  bsf     0x03, 0x5
00b1:  009b  movwf   0x1b
00b2:  1283  bcf     0x03, 0x5
00b3:  0800  movf    0x00, 0x0
00b4:  1683  bsf     0x03, 0x5
00b5:  009a  movwf   0x1a
00b6:  151c  bsf     0x1c, 0x2
00b7:  138b  bcf     0x0b, 0x7
00b8:  3055  movlw   0x55
00b9:  009d  movwf   0x1d
00ba:  30aa  movlw   0xaa
00bb:  009d  movwf   0x1d
00bc:  149c  bsf     0x1c, 0x1
00bd:  189c  btfsc   0x1c, 0x1
00be:  28bd  goto    0x00bd
00bf:  111c  bcf     0x1c, 0x2
00c0:  1283  bcf     0x03, 0x5
00c1:  3400  retlw   0x00
00c2:  00af  movwf   0x2f
00c3:  138b  bcf     0x0b, 0x7
00c4:  1683  bsf     0x03, 0x5
00c5:  009b  movwf   0x1b
00c6:  141c  bsf     0x1c, 0x0
00c7:  081a  movf    0x1a, 0x0
00c8:  1283  bcf     0x03, 0x5
00c9:  0080  movwf   0x00
00ca:  082f  movf    0x2f, 0x0
00cb:  0008  return
00cc:  20c2  call    0x00c2
00cd:  3e01  addlw   0x01
00ce:  0a84  incf    0x04, 0x1
00cf:  20c2  call    0x00c2
00d0:  3e01  addlw   0x01
00d1:  0a84  incf    0x04, 0x1
00d2:  20c2  call    0x00c2
00d3:  3e01  addlw   0x01
00d4:  0a84  incf    0x04, 0x1
00d5:  28c2  goto    0x00c2
00d6:  01b0  clrf    0x30
00d7:  01b1  clrf    0x31
00d8:  01b2  clrf    0x32
00d9:  01b3  clrf    0x33
00da:  01ac  clrf    0x2c
00db:  0181  clrf    0x01
00dc:  0000  nop
00dd:  0000  nop
00de:  084e  movf    0x4e, 0x0
00df:  2026  call    0x0026
00e0:  00af  movwf   0x2f
00e1:  3049  movlw   0x49
00e2:  074e  addwf   0x4e, 0x0
00e3:  0084  movwf   0x04
00e4:  0800  movf    0x00, 0x0
00e5:  0086  movwf   0x06
00e6:  082f  movf    0x2f, 0x0
00e7:  0085  movwf   0x05
00e8:  0acf  incf    0x4f, 0x1
00e9:  1b4f  btfsc   0x4f, 0x6
00ea:  0ace  incf    0x4e, 0x1
00eb:  134f  bcf     0x4f, 0x6
00ec:  084e  movf    0x4e, 0x0
00ed:  3c04  sublw   0x04
00ee:  1c03  btfss   0x03, 0x0
00ef:  01ce  clrf    0x4e
00f0:  0801  movf    0x01, 0x0
00f1:  00b3  movwf   0x33
00f2:  3001  movlw   0x01
00f3:  1fac  btfss   0x2c, 0x7
00f4:  0103  clrw
00f5:  1bb3  btfsc   0x33, 0x7
00f6:  0103  clrw
00f7:  07b2  addwf   0x32, 0x1
00f8:  1803  btfsc   0x03, 0x0
00f9:  0ab1  incf    0x31, 0x1
00fa:  1bb1  btfsc   0x31, 0x7
00fb:  291a  goto    0x011a
00fc:  0833  movf    0x33, 0x0
00fd:  00ac  movwf   0x2c
00fe:  08ae  movf    0x2e, 0x1
00ff:  1903  btfsc   0x03, 0x2
0100:  03ad  decf    0x2d, 0x1
0101:  03ae  decf    0x2e, 0x1
0102:  0064  clrwdt
0103:  300c  movlw   0x0c
0104:  3eff  addlw   0xff
0105:  1d03  btfss   0x03, 0x2
0106:  2904  goto    0x0104
0107:  0000  nop
0108:  0000  nop
0109:  0000  nop
010a:  0000  nop
010b:  0000  nop
010c:  082d  movf    0x2d, 0x0
010d:  042e  iorwf   0x2e, 0x0
010e:  1d03  btfss   0x03, 0x2
010f:  28de  goto    0x00de
0110:  0801  movf    0x01, 0x0
0111:  00b3  movwf   0x33
0112:  3001  movlw   0x01
0113:  1fac  btfss   0x2c, 0x7
0114:  0103  clrw
0115:  1bb3  btfsc   0x33, 0x7
0116:  0103  clrw
0117:  07b2  addwf   0x32, 0x1
0118:  1803  btfsc   0x03, 0x0
0119:  0ab1  incf    0x31, 0x1
011a:  3400  retlw   0x00
011b:  0800  movf    0x00, 0x0
011c:  0a84  incf    0x04, 0x1
011d:  00b0  movwf   0x30
011e:  0800  movf    0x00, 0x0
011f:  0a84  incf    0x04, 0x1
0120:  00b1  movwf   0x31
0121:  0800  movf    0x00, 0x0
0122:  0a84  incf    0x04, 0x1
0123:  00b2  movwf   0x32
0124:  0800  movf    0x00, 0x0
0125:  0a84  incf    0x04, 0x1
0126:  00b3  movwf   0x33
0127:  01a7  clrf    0x27
0128:  3040  movlw   0x40
0129:  0084  movwf   0x04
012a:  0064  clrwdt
012b:  0827  movf    0x27, 0x0
012c:  202c  call    0x002c
012d:  00a8  movwf   0x28
012e:  0aa7  incf    0x27, 0x1
012f:  0827  movf    0x27, 0x0
0130:  202c  call    0x002c
0131:  00a9  movwf   0x29
0132:  0aa7  incf    0x27, 0x1
0133:  0827  movf    0x27, 0x0
0134:  202c  call    0x002c
0135:  00aa  movwf   0x2a
0136:  0aa7  incf    0x27, 0x1
0137:  0827  movf    0x27, 0x0
0138:  202c  call    0x002c
0139:  00ab  movwf   0x2b
013a:  0aa7  incf    0x27, 0x1
013b:  0180  clrf    0x00
013c:  082b  movf    0x2b, 0x0
013d:  02b3  subwf   0x33, 0x1
013e:  082a  movf    0x2a, 0x0
013f:  1803  btfsc   0x03, 0x0
0140:  2946  goto    0x0146
0141:  02b2  subwf   0x32, 0x1
0142:  1903  btfsc   0x03, 0x2
0143:  1003  bcf     0x03, 0x0
0144:  03b2  decf    0x32, 0x1
0145:  2947  goto    0x0147
0146:  02b2  subwf   0x32, 0x1
0147:  0829  movf    0x29, 0x0
0148:  1803  btfsc   0x03, 0x0
0149:  294f  goto    0x014f
014a:  02b1  subwf   0x31, 0x1
014b:  1903  btfsc   0x03, 0x2
014c:  1003  bcf     0x03, 0x0
014d:  03b1  decf    0x31, 0x1
014e:  2950  goto    0x0150
014f:  02b1  subwf   0x31, 0x1
0150:  0828  movf    0x28, 0x0
0151:  1803  btfsc   0x03, 0x0
0152:  2958  goto    0x0158
0153:  02b0  subwf   0x30, 0x1
0154:  1903  btfsc   0x03, 0x2
0155:  1003  bcf     0x03, 0x0
0156:  03b0  decf    0x30, 0x1
0157:  2959  goto    0x0159
0158:  02b0  subwf   0x30, 0x1
0159:  1c03  btfss   0x03, 0x0
015a:  295d  goto    0x015d
015b:  0a80  incf    0x00, 0x1
015c:  293c  goto    0x013c
015d:  082b  movf    0x2b, 0x0
015e:  07b3  addwf   0x33, 0x1
015f:  082a  movf    0x2a, 0x0
0160:  1c03  btfss   0x03, 0x0
0161:  2967  goto    0x0167
0162:  07b2  addwf   0x32, 0x1
0163:  0ab2  incf    0x32, 0x1
0164:  1903  btfsc   0x03, 0x2
0165:  1403  bsf     0x03, 0x0
0166:  2968  goto    0x0168
0167:  07b2  addwf   0x32, 0x1
0168:  0829  movf    0x29, 0x0
0169:  1c03  btfss   0x03, 0x0
016a:  2970  goto    0x0170
016b:  07b1  addwf   0x31, 0x1
016c:  0ab1  incf    0x31, 0x1
016d:  1903  btfsc   0x03, 0x2
016e:  1403  bsf     0x03, 0x0
016f:  2971  goto    0x0171
0170:  07b1  addwf   0x31, 0x1
0171:  0828  movf    0x28, 0x0
0172:  1c03  btfss   0x03, 0x0
0173:  2979  goto    0x0179
0174:  07b0  addwf   0x30, 0x1
0175:  0ab0  incf    0x30, 0x1
0176:  1903  btfsc   0x03, 0x2
0177:  1403  bsf     0x03, 0x0
0178:  297a  goto    0x017a
0179:  07b0  addwf   0x30, 0x1
017a:  0a84  incf    0x04, 0x1
017b:  3020  movlw   0x20
017c:  0227  subwf   0x27, 0x0
017d:  1d03  btfss   0x03, 0x2
017e:  292a  goto    0x012a
017f:  3040  movlw   0x40
0180:  0084  movwf   0x04
0181:  0880  movf    0x00, 0x1
0182:  1d03  btfss   0x03, 0x2
0183:  2994  goto    0x0194
0184:  0a84  incf    0x04, 0x1
0185:  0880  movf    0x00, 0x1
0186:  1d03  btfss   0x03, 0x2
0187:  2994  goto    0x0194
0188:  0a84  incf    0x04, 0x1
0189:  0880  movf    0x00, 0x1
018a:  1d03  btfss   0x03, 0x2
018b:  2991  goto    0x0191
018c:  0a84  incf    0x04, 0x1
018d:  0880  movf    0x00, 0x1
018e:  1d03  btfss   0x03, 0x2
018f:  2991  goto    0x0191
0190:  0a84  incf    0x04, 0x1
0191:  1851  btfsc   0x51, 0x0
0192:  17c4  bsf     0x44, 0x7
0193:  2995  goto    0x0195
0194:  17c1  bsf     0x41, 0x7
0195:  0800  movf    0x00, 0x0
0196:  2085  call    0x0085
0197:  0a84  incf    0x04, 0x1
0198:  0800  movf    0x00, 0x0
0199:  208c  call    0x008c
019a:  0a84  incf    0x04, 0x1
019b:  0800  movf    0x00, 0x0
019c:  2093  call    0x0093
019d:  0a84  incf    0x04, 0x1
019e:  0800  movf    0x00, 0x0
019f:  209a  call    0x009a
01a0:  0a84  incf    0x04, 0x1
01a1:  0800  movf    0x00, 0x0
01a2:  28a1  goto    0x00a1
0634:  3000  movlw   0x00
0635:  1683  bsf     0x03, 0x5
0636:  0085  movwf   0x05
0637:  1283  bcf     0x03, 0x5
0638:  0185  clrf    0x05
0639:  3000  movlw   0x00
063a:  1683  bsf     0x03, 0x5
063b:  0086  movwf   0x06
063c:  1283  bcf     0x03, 0x5
063d:  0186  clrf    0x06
063e:  01ce  clrf    0x4e
063f:  01cf  clrf    0x4f
0640:  3013  movlw   0x13
0641:  00c8  movwf   0x48
0642:  3014  movlw   0x14
0643:  2085  call    0x0085
0644:  3014  movlw   0x14
0645:  208c  call    0x008c
0646:  3014  movlw   0x14
0647:  2093  call    0x0093
0648:  3014  movlw   0x14
0649:  209a  call    0x009a
064a:  3014  movlw   0x14
064b:  20a1  call    0x00a1
064c:  3027  movlw   0x27
064d:  206a  call    0x006a
064e:  3061  movlw   0x61
064f:  00ad  movwf   0x2d
0650:  30a8  movlw   0xa8
0651:  00ae  movwf   0x2e
0652:  20d6  call    0x00d6
0653:  01d2  clrf    0x52
0654:  01d4  clrf    0x54
0655:  3038  movlw   0x38
0656:  0084  movwf   0x04
0657:  3000  movlw   0x00
0658:  20cc  call    0x00cc
0659:  3055  movlw   0x55
065a:  0084  movwf   0x04
065b:  3020  movlw   0x20
065c:  20c2  call    0x00c2
065d:  20a8  call    0x00a8
065e:  1683  bsf     0x03, 0x5
065f:  3000  movlw   0x00
0660:  0085  movwf   0x05
0661:  3000  movlw   0x00
0662:  0086  movwf   0x06
0663:  1283  bcf     0x03, 0x5
0664:  0064  clrwdt
0665:  3020  movlw   0x20
0666:  1683  bsf     0x03, 0x5
0667:  0081  movwf   0x01
0668:  1283  bcf     0x03, 0x5
0669:  3006  movlw   0x06
066a:  00ad  movwf   0x2d
066b:  3082  movlw   0x82
066c:  00ae  movwf   0x2e
066d:  3025  movlw   0x25
066e:  206a  call    0x006a
066f:  20d6  call    0x00d6
0670:  3030  movlw   0x30
0671:  00ad  movwf   0x2d
0672:  30d4  movlw   0xd4
0673:  00ae  movwf   0x2e
0674:  0ad1  incf    0x51, 0x1
0675:  0ad2  incf    0x52, 0x1
0676:  0832  movf    0x32, 0x0
0677:  39c0  andlw   0xc0
0678:  1d03  btfss   0x03, 0x2
0679:  2eab  goto    0x06ab
067a:  1ab2  btfsc   0x32, 0x5
067b:  2ea7  goto    0x06a7
067c:  1a32  btfsc   0x32, 0x4
067d:  2ea3  goto    0x06a3
067e:  19b2  btfsc   0x32, 0x3
067f:  2e9f  goto    0x069f
0680:  1932  btfsc   0x32, 0x2
0681:  2e9c  goto    0x069c
0682:  18b2  btfsc   0x32, 0x1
0683:  2e9c  goto    0x069c
0684:  1832  btfsc   0x32, 0x0
0685:  2e9c  goto    0x069c
0686:  0833  movf    0x33, 0x0
0687:  3c34  sublw   0x34
0688:  1c03  btfss   0x03, 0x0
0689:  2e9c  goto    0x069c
068a:  206f  call    0x006f
068b:  0ad2  incf    0x52, 0x1
068c:  0ad2  incf    0x52, 0x1
068d:  0ad2  incf    0x52, 0x1
068e:  30c3  movlw   0xc3
068f:  00ad  movwf   0x2d
0690:  3050  movlw   0x50
0691:  00ae  movwf   0x2e
0692:  3000  movlw   0x00
0693:  2eaf  goto    0x06af
0694:  206f  call    0x006f
0695:  0ad2  incf    0x52, 0x1
0696:  3061  movlw   0x61
0697:  00ad  movwf   0x2d
0698:  30a8  movlw   0xa8
0699:  00ae  movwf   0x2e
069a:  3001  movlw   0x01
069b:  2eaf  goto    0x06af
069c:  206f  call    0x006f
069d:  3002  movlw   0x02
069e:  2eaf  goto    0x06af
069f:  3020  movlw   0x20
06a0:  206a  call    0x006a
06a1:  3003  movlw   0x03
06a2:  2eaf  goto    0x06af
06a3:  3021  movlw   0x21
06a4:  206a  call    0x006a
06a5:  3004  movlw   0x04
06a6:  2eaf  goto    0x06af
06a7:  3022  movlw   0x22
06a8:  206a  call    0x006a
06a9:  3005  movlw   0x05
06aa:  2eaf  goto    0x06af
06ab:  3023  movlw   0x23
06ac:  206a  call    0x006a
06ad:  3006  movlw   0x06
06ae:  2eaf  goto    0x06af
06af:  00d0  movwf   0x50
06b0:  20d6  call    0x00d6
06b1:  1c55  btfss   0x55, 0x0
06b2:  2ee0  goto    0x06e0
06b3:  1854  btfsc   0x54, 0x0
06b4:  20a8  call    0x00a8
06b5:  0833  movf    0x33, 0x0
06b6:  0253  subwf   0x53, 0x0
06b7:  00af  movwf   0x2f
06b8:  1faf  btfss   0x2f, 0x7
06b9:  2ebc  goto    0x06bc
06ba:  09af  comf    0x2f, 0x1
06bb:  0aaf  incf    0x2f, 0x1
06bc:  082f  movf    0x2f, 0x0
06bd:  3c0a  sublw   0x0a
06be:  1803  btfsc   0x03, 0x0
06bf:  2ec5  goto    0x06c5
06c0:  1054  bcf     0x54, 0x0
06c1:  01d2  clrf    0x52
06c2:  0833  movf    0x33, 0x0
06c3:  00d3  movwf   0x53
06c4:  2ee0  goto    0x06e0
06c5:  1854  btfsc   0x54, 0x0
06c6:  2ed1  goto    0x06d1
06c7:  0852  movf    0x52, 0x0
06c8:  3c3c  sublw   0x3c
06c9:  1803  btfsc   0x03, 0x0
06ca:  2eda  goto    0x06da
06cb:  300d  movlw   0x0d
06cc:  00d2  movwf   0x52
06cd:  1454  bsf     0x54, 0x0
06ce:  0833  movf    0x33, 0x0
06cf:  00d3  movwf   0x53
06d0:  2edc  goto    0x06dc
06d1:  0852  movf    0x52, 0x0
06d2:  3c0e  sublw   0x0e
06d3:  1803  btfsc   0x03, 0x0
06d4:  2edc  goto    0x06dc
06d5:  01d2  clrf    0x52
06d6:  0833  movf    0x33, 0x0
06d7:  00d3  movwf   0x53
06d8:  01d2  clrf    0x52
06d9:  2ee0  goto    0x06e0
06da:  1c54  btfss   0x54, 0x0
06db:  2ee0  goto    0x06e0
06dc:  2079  call    0x0079
06dd:  2079  call    0x0079
06de:  2079  call    0x0079
06df:  2f26  goto    0x0726
06e0:  08d0  movf    0x50, 0x1
06e1:  1903  btfsc   0x03, 0x2
06e2:  2eea  goto    0x06ea
06e3:  1003  bcf     0x03, 0x0
06e4:  0db3  rlf     0x33, 0x1
06e5:  0db2  rlf     0x32, 0x1
06e6:  0db1  rlf     0x31, 0x1
06e7:  0db0  rlf     0x30, 0x1
06e8:  0bd0  decfsz  0x50, 0x1
06e9:  2ee3  goto    0x06e3
06ea:  0830  movf    0x30, 0x0
06eb:  0431  iorwf   0x31, 0x0
06ec:  0432  iorwf   0x32, 0x0
06ed:  0433  iorwf   0x33, 0x0
06ee:  1903  btfsc   0x03, 0x2
06ef:  2f29  goto    0x0729
06f0:  1bb0  btfsc   0x30, 0x7
06f1:  2f34  goto    0x0734
06f2:  0830  movf    0x30, 0x0
06f3:  00b4  movwf   0x34
06f4:  0831  movf    0x31, 0x0
06f5:  00b5  movwf   0x35
06f6:  0832  movf    0x32, 0x0
06f7:  00b6  movwf   0x36
06f8:  0833  movf    0x33, 0x0
06f9:  00b7  movwf   0x37
06fa:  083b  movf    0x3b, 0x0
06fb:  07b3  addwf   0x33, 0x1
06fc:  083a  movf    0x3a, 0x0
06fd:  1c03  btfss   0x03, 0x0
06fe:  2f04  goto    0x0704
06ff:  07b2  addwf   0x32, 0x1
0700:  0ab2  incf    0x32, 0x1
0701:  1903  btfsc   0x03, 0x2
0702:  1403  bsf     0x03, 0x0
0703:  2f05  goto    0x0705
0704:  07b2  addwf   0x32, 0x1
0705:  0839  movf    0x39, 0x0
0706:  1c03  btfss   0x03, 0x0
0707:  2f0d  goto    0x070d
0708:  07b1  addwf   0x31, 0x1
0709:  0ab1  incf    0x31, 0x1
070a:  1903  btfsc   0x03, 0x2
070b:  1403  bsf     0x03, 0x0
070c:  2f0e  goto    0x070e
070d:  07b1  addwf   0x31, 0x1
070e:  0838  movf    0x38, 0x0
070f:  1c03  btfss   0x03, 0x0
0710:  2f16  goto    0x0716
0711:  07b0  addwf   0x30, 0x1
0712:  0ab0  incf    0x30, 0x1
0713:  1903  btfsc   0x03, 0x2
0714:  1403  bsf     0x03, 0x0
0715:  2f17  goto    0x0717
0716:  07b0  addwf   0x30, 0x1
0717:  1fb0  btfss   0x30, 0x7
0718:  2f25  goto    0x0725
0719:  09b0  comf    0x30, 0x1
071a:  09b1  comf    0x31, 0x1
071b:  09b2  comf    0x32, 0x1
071c:  09b3  comf    0x33, 0x1
071d:  0fb3  incfsz  0x33, 0x1
071e:  2f25  goto    0x0725
071f:  0fb2  incfsz  0x32, 0x1
0720:  2f25  goto    0x0725
0721:  0fb1  incfsz  0x31, 0x1
0722:  2f25  goto    0x0725
0723:  0fb0  incfsz  0x30, 0x1
0724:  2f25  goto    0x0725
0725:  2127  call    0x0127
0726:  1e85  btfss   0x05, 0x5
0727:  2fca  goto    0x07ca
0728:  2e5e  goto    0x065e
0729:  3013  movlw   0x13
072a:  2085  call    0x0085
072b:  3013  movlw   0x13
072c:  208c  call    0x008c
072d:  3013  movlw   0x13
072e:  2093  call    0x0093
072f:  3013  movlw   0x13
0730:  209a  call    0x009a
0731:  3000  movlw   0x00
0732:  20a1  call    0x00a1
0733:  2f26  goto    0x0726
0734:  300e  movlw   0x0e
0735:  2085  call    0x0085
0736:  3013  movlw   0x13
0737:  208c  call    0x008c
0738:  3013  movlw   0x13
0739:  2093  call    0x0093
073a:  3013  movlw   0x13
073b:  209a  call    0x009a
073c:  3013  movlw   0x13
073d:  20a1  call    0x00a1
073e:  2e5e  goto    0x065e
073f:  3013  movlw   0x13
0740:  00ad  movwf   0x2d
0741:  3088  movlw   0x88
0742:  00ae  movwf   0x2e
0743:  28d6  goto    0x00d6
0744:  3018  movlw   0x18
0745:  2085  call    0x0085
0746:  3019  movlw   0x19
0747:  208c  call    0x008c
0748:  3012  movlw   0x12
0749:  2093  call    0x0093
074a:  301a  movlw   0x1a
074b:  209a  call    0x009a
074c:  3013  movlw   0x13
074d:  20a1  call    0x00a1
074e:  2f3f  goto    0x073f
074f:  1c55  btfss   0x55, 0x0
0750:  2f5b  goto    0x075b
0751:  3015  movlw   0x15
0752:  2085  call    0x0085
0753:  301b  movlw   0x1b
0754:  208c  call    0x008c
0755:  300a  movlw   0x0a
0756:  2093  call    0x0093
0757:  3022  movlw   0x22
0758:  209a  call    0x009a
0759:  300e  movlw   0x0e
075a:  2f4d  goto    0x074d
075b:  3021  movlw   0x21
075c:  2085  call    0x0085
075d:  3017  movlw   0x17
075e:  208c  call    0x008c
075f:  3015  movlw   0x15
0760:  2093  call    0x0093
0761:  301b  movlw   0x1b
0762:  209a  call    0x009a
0763:  3022  movlw   0x22
0764:  2f4d  goto    0x074d
0765:  300a  movlw   0x0a
0766:  2085  call    0x0085
0767:  300d  movlw   0x0d
0768:  208c  call    0x008c
0769:  300d  movlw   0x0d
076a:  2093  call    0x0093
076b:  3013  movlw   0x13
076c:  2f4b  goto    0x074b
076d:  301b  movlw   0x1b
076e:  2085  call    0x0085
076f:  3019  movlw   0x19
0770:  208c  call    0x008c
0771:  300b  movlw   0x0b
0772:  2093  call    0x0093
0773:  3013  movlw   0x13
0774:  2f4b  goto    0x074b
0775:  301c  movlw   0x1c
0776:  2085  call    0x0085
0777:  300e  movlw   0x0e
0778:  208c  call    0x008c
0779:  3016  movlw   0x16
077a:  2093  call    0x0093
077b:  3017  movlw   0x17
077c:  2f4b  goto    0x074b
077d:  301a  movlw   0x1a
077e:  2085  call    0x0085
077f:  300a  movlw   0x0a
0780:  208c  call    0x008c
0781:  300b  movlw   0x0b
0782:  2093  call    0x0093
0783:  3020  movlw   0x20
0784:  209a  call    0x009a
0785:  300e  movlw   0x0e
0786:  20a1  call    0x00a1
0787:  2f3f  goto    0x073f
0788:  3004  movlw   0x04
0789:  2f94  goto    0x0794
078a:  3008  movlw   0x08
078b:  2f94  goto    0x0794
078c:  300c  movlw   0x0c
078d:  2f94  goto    0x0794
078e:  3010  movlw   0x10
078f:  2f94  goto    0x0794
0790:  3014  movlw   0x14
0791:  2f94  goto    0x0794
0792:  3018  movlw   0x18
0793:  2f94  goto    0x0794
0794:  00af  movwf   0x2f
0795:  3034  movlw   0x34
0796:  0084  movwf   0x04
0797:  082f  movf    0x2f, 0x0
0798:  20cc  call    0x00cc
0799:  3034  movlw   0x34
079a:  0084  movwf   0x04
079b:  211b  call    0x011b
079c:  2f3f  goto    0x073f
079d:  2e53  goto    0x0653
079e:  3001  movlw   0x01
079f:  06d5  xorwf   0x55, 0x1
07a0:  3055  movlw   0x55
07a1:  0084  movwf   0x04
07a2:  3020  movlw   0x20
07a3:  20af  call    0x00af
07a4:  2f3f  goto    0x073f
07a5:  3034  movlw   0x34
07a6:  0084  movwf   0x04
07a7:  3000  movlw   0x00
07a8:  20af  call    0x00af
07a9:  0a84  incf    0x04, 0x1
07aa:  3001  movlw   0x01
07ab:  20af  call    0x00af
07ac:  0a84  incf    0x04, 0x1
07ad:  3002  movlw   0x02
07ae:  20af  call    0x00af
07af:  0a84  incf    0x04, 0x1
07b0:  3003  movlw   0x03
07b1:  20af  call    0x00af
07b2:  2e53  goto    0x0653
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
07cc:  2085  call    0x0085
07cd:  3016  movlw   0x16
07ce:  208c  call    0x008c
07cf:  3017  movlw   0x17
07d0:  2093  call    0x0093
07d1:  3010  movlw   0x10
07d2:  209a  call    0x009a
07d3:  3013  movlw   0x13
07d4:  20a1  call    0x00a1
07d5:  273f  call    0x073f
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
07e0:  273f  call    0x073f
07e1:  0bbd  decfsz  0x3d, 0x1
07e2:  2fde  goto    0x07de
07e3:  20a8  call    0x00a8
07e4:  273f  call    0x073f
07e5:  204d  call    0x004d
07e6:  1e85  btfss   0x05, 0x5
07e7:  2fe3  goto    0x07e3
07e8:  285c  goto    0x005c
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
07f4:  3c0b  sublw   0x0b
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
212c:  31    db      0x31                                   ; '1'
212d:  00    db      0x00
212e:  58    db      0x58                                   ; 'X'
212f:  00    db      0x00
2130:  00    db      0x00
2131:  00    db      0x00
2132:  a3    db      0xa3
2133:  00    db      0x00
2134:  44    db      0x44                                   ; 'D'
2135:  00    db      0x00
2136:  e0    db      0xe0
2137:  00    db      0x00
2138:  00    db      0x00
2139:  00    db      0x00
