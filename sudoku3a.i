#define CASE_I(I) \
    do {\
      flags = checkCell(i) ^ MaskFlags; \
      if (flags != (FlagsType) 0) { /* 数字を置くことができる */ \
	if ((flags & (flags - 1)) == (FlagsType) 0) { /* 選択肢は一つしかない */ \
	  board[i] = flags; \
	  count(i + 1); /* 再帰呼び出し */ \
	} else { /* 選択肢は複数ある */  \
	  if (BoardSize == 9) { \
	    if (flags & 0x001) { board[i] = 0x001; count(i + 1); } \
	    if (flags & 0x002) { board[i] = 0x002; count(i + 1); } \
	    if (flags & 0x004) { board[i] = 0x004; count(i + 1); } \
	    if (flags & 0x008) { board[i] = 0x008; count(i + 1); } \
	    if (flags & 0x010) { board[i] = 0x010; count(i + 1); } \
	    if (flags & 0x020) { board[i] = 0x020; count(i + 1); } \
	    if (flags & 0x040) { board[i] = 0x040; count(i + 1); } \
	    if (flags & 0x080) { board[i] = 0x080; count(i + 1); } \
	    if (flags & 0x100) { board[i] = 0x100; count(i + 1); } \
	  } else { \
	    for (FlagsType j = (FlagsType) 1; j < MaskFlags; j <<= 1) { \
	      if ((flags & j) != (FlagsType) 0) { \
		board[i] = j; \
		count(i + 1); /* 再帰呼び出し */ \
	      } \
	    } \
	  } \
	} \
	board[i] = (FlagsType) 0; }} while (0)

    case  0:      CASE_I(0);       break;
    case  1:      CASE_I(1);       break;
    case  2:      CASE_I(2);       break;
    case  3:      CASE_I(3);       break;
    case  4:      CASE_I(4);       break;
    case  5:      CASE_I(5);       break;
    case  6:      CASE_I(6);       break;
    case  7:      CASE_I(7);       break;
    case  8:      CASE_I(8);       break;
    case  9:      CASE_I(9);       break;
    case 10:      CASE_I(10);       break;
    case 11:      CASE_I(11);       break;
    case 12:      CASE_I(12);       break;
    case 13:      CASE_I(13);       break;
    case 14:      CASE_I(14);       break;
    case 15:      CASE_I(15);       break;
    case 16:      CASE_I(16);       break;
    case 17:      CASE_I(17);       break;
    case 18:      CASE_I(18);       break;
    case 19:      CASE_I(19);       break;
    case 20:      CASE_I(20);       break;
    case 21:      CASE_I(21);       break;
    case 22:      CASE_I(22);       break;
    case 23:      CASE_I(23);       break;
    case 24:      CASE_I(24);       break;
    case 25:      CASE_I(25);       break;
    case 26:      CASE_I(26);       break;
    case 27:      CASE_I(27);       break;
    case 28:      CASE_I(28);       break;
    case 29:      CASE_I(29);       break;
    case 30:      CASE_I(30);       break;
    case 31:      CASE_I(31);       break;
    case 32:      CASE_I(32);       break;
    case 33:      CASE_I(33);       break;
    case 34:      CASE_I(34);       break;
    case 35:      CASE_I(35);       break;
    case 36:      CASE_I(36);       break;
    case 37:      CASE_I(37);       break;
    case 38:      CASE_I(38);       break;
    case 39:      CASE_I(39);       break;
    case 40:      CASE_I(40);       break;
    case 41:      CASE_I(41);       break;
    case 42:      CASE_I(42);       break;
    case 43:      CASE_I(43);       break;
    case 44:      CASE_I(44);       break;
    case 45:      CASE_I(45);       break;
    case 46:      CASE_I(46);       break;
    case 47:      CASE_I(47);       break;
    case 48:      CASE_I(48);       break;
    case 49:      CASE_I(49);       break;
    case 50:      CASE_I(50);       break;
    case 51:      CASE_I(51);       break;
    case 52:      CASE_I(52);       break;
    case 53:      CASE_I(53);       break;
    case 54:      CASE_I(54);       break;
    case 55:      CASE_I(55);       break;
    case 56:      CASE_I(56);       break;
    case 57:      CASE_I(57);       break;
    case 58:      CASE_I(58);       break;
    case 59:      CASE_I(59);       break;
    case 60:      CASE_I(60);       break;
    case 61:      CASE_I(61);       break;
    case 62:      CASE_I(62);       break;
    case 63:      CASE_I(63);       break;
    case 64:      CASE_I(64);       break;
    case 65:      CASE_I(65);       break;
    case 66:      CASE_I(66);       break;
    case 67:      CASE_I(67);       break;
    case 68:      CASE_I(68);       break;
    case 69:      CASE_I(69);       break;
    case 70:      CASE_I(70);       break;
    case 71:      CASE_I(71);       break;
    case 72:      CASE_I(72);       break;
    case 73:      CASE_I(73);       break;
    case 74:      CASE_I(74);       break;
    case 75:      CASE_I(75);       break;
    case 76:      CASE_I(76);       break;
    case 77:      CASE_I(77);       break;
    case 78:      CASE_I(78);       break;
    case 79:      CASE_I(79);       break;
    case 80:      CASE_I(80);       break;
    default:      CASE_I(i);	    break;
