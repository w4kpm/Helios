static uint8_t arial_bold_rows_char = 2;
static uint8_t arial_bold_cols = 16;
static uint8_t arial_bold[95][32] = {
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x37, 0xfc, 0x37, 0xfc, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3c, 0x0, 0x3c, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3c, 0x0, 0x3c, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x6, 0x60, 0x36, 0x60, 0x3f, 0x60, 0xf, 0xf0, 0x36, 0xfc, 0x3f, 0x6c, 0xf, 0xf0, 0x6, 0xfc, 0x6, 0x6c, 0x6, 0x60, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x70, 0x1c, 0xf8, 0x31, 0xcc, 0x7f, 0xfe, 0x33, 0x8c, 0x1f, 0x18, 0xe, 0x10, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x78, 0x0, 0xfc, 0x0, 0x84, 0x20, 0x84, 0x30, 0xfc, 0x1c, 0x78, 0xf, 0x0, 0x3, 0xc0, 0x0, 0xe0, 0x1e, 0x38, 0x3f, 0x1c, 0x21, 0x4, 0x21, 0x0, 0x3f, 0x0, 0x1e, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xe, 0x0, 0x1f, 0x38, 0x31, 0xfc, 0x30, 0xcc, 0x33, 0xcc, 0x37, 0xcc, 0x1e, 0x7c, 0x1c, 0x38, 0x1f, 0x0, 0x3a, 0x0, 0x10, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3c, 0x0, 0x3c, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x7, 0xf0, 0x1f, 0xfc, 0x38, 0xe, 0x20, 0x2, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x20, 0x2, 0x38, 0xe, 0x1f, 0xfc, 0x7, 0xf0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0xc0, 0x8, 0xc0, 0xc, 0x80, 0x1f, 0x80, 0x7, 0xf0, 0x3, 0xf0, 0x7, 0xf0, 0x1f, 0x80, 0xc, 0x80, 0x8, 0xc0, 0x0, 0xc0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3, 0x0, 0x3, 0x0, 0x3, 0x0, 0x1f, 0xe0, 0x1f, 0xe0, 0x3, 0x0, 0x3, 0x0, 0x3, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x4c, 0x0, 0x3c, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3, 0x0, 0x3, 0x0, 0x3, 0x0, 0x3, 0x0, 0x3, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x18, 0x0, 0x18, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x30, 0x0, 0x3f, 0x0, 0xf, 0xf0, 0x0, 0xfc, 0x0, 0xc, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0xf0, 0x1f, 0xf8, 0x38, 0x1c, 0x30, 0xc, 0x30, 0xc, 0x38, 0x1c, 0x1f, 0xf8, 0xf, 0xf0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x60, 0x0, 0x30, 0x0, 0x18, 0x3f, 0xfc, 0x3f, 0xfc, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x30, 0x30, 0x38, 0x38, 0x3c, 0x1c, 0x36, 0xc, 0x37, 0xc, 0x33, 0x8c, 0x31, 0xf8, 0x30, 0x70, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x10, 0x1c, 0x18, 0x38, 0x1c, 0x30, 0xcc, 0x30, 0xcc, 0x39, 0xcc, 0x1f, 0xfc, 0xf, 0x38, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xe, 0x0, 0xf, 0x0, 0xd, 0xc0, 0xc, 0xe0, 0xc, 0x38, 0x3f, 0xfc, 0x3f, 0xfc, 0xc, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xd, 0xe0, 0x1d, 0xfc, 0x38, 0xdc, 0x30, 0xcc, 0x30, 0xcc, 0x39, 0xcc, 0x1f, 0x8c, 0xf, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x7, 0xe0, 0x1f, 0xf8, 0x39, 0x9c, 0x30, 0xcc, 0x30, 0xcc, 0x31, 0xcc, 0x1f, 0x9c, 0xf, 0x18, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x0, 0xc, 0x3c, 0xc, 0x3f, 0x8c, 0x7, 0xec, 0x0, 0x7c, 0x0, 0x1c, 0x0, 0xc, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xe, 0x70, 0x1f, 0xf8, 0x31, 0x8c, 0x31, 0x8c, 0x31, 0x8c, 0x31, 0x8c, 0x1f, 0xf8, 0xe, 0x70, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x18, 0xf0, 0x39, 0xf8, 0x33, 0x8c, 0x33, 0xc, 0x33, 0xc, 0x39, 0x9c, 0x1f, 0xf8, 0x7, 0xe0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x18, 0xc, 0x18, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x4c, 0x18, 0x3c, 0x18, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0, 0x3, 0x80, 0x3, 0x80, 0x6, 0xc0, 0x6, 0xc0, 0xc, 0x60, 0xc, 0x60, 0x18, 0x30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3, 0x30, 0x3, 0x30, 0x3, 0x30, 0x3, 0x30, 0x3, 0x30, 0x3, 0x30, 0x3, 0x30, 0x3, 0x30, 0x3, 0x30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x18, 0x30, 0xc, 0x60, 0xc, 0x60, 0x6, 0xc0, 0x6, 0xc0, 0x3, 0x80, 0x3, 0x80, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x30, 0x0, 0x38, 0x0, 0x1c, 0x37, 0xc, 0x37, 0x8c, 0x1, 0xcc, 0x0, 0xf8, 0x0, 0x70, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x3, 0xe0, 0x4, 0x18, 0x9, 0xe4, 0x13, 0xf6, 0x13, 0x1a, 0x11, 0x1a, 0x13, 0xf2, 0x13, 0xfa, 0x12, 0x1c, 0x9, 0xc, 0x4, 0xf8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x20, 0x0, 0x3c, 0x0, 0x1f, 0x80, 0x7, 0xf0, 0x6, 0x7c, 0x6, 0xc, 0x6, 0x7c, 0x7, 0xf0, 0x1f, 0x80, 0x3c, 0x0, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3f, 0xfc, 0x3f, 0xfc, 0x31, 0x8c, 0x31, 0x8c, 0x31, 0x8c, 0x31, 0x8c, 0x31, 0x8c, 0x31, 0xfc, 0x1f, 0x78, 0xe, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x7, 0xe0, 0x1f, 0xf8, 0x1c, 0x38, 0x30, 0xc, 0x30, 0xc, 0x30, 0xc, 0x30, 0xc, 0x38, 0x1c, 0x1c, 0x38, 0x8, 0x10, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3f, 0xfc, 0x3f, 0xfc, 0x30, 0xc, 0x30, 0xc, 0x30, 0xc, 0x30, 0xc, 0x30, 0xc, 0x18, 0x18, 0x1f, 0xf8, 0x7, 0xe0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3f, 0xfc, 0x3f, 0xfc, 0x31, 0x8c, 0x31, 0x8c, 0x31, 0x8c, 0x31, 0x8c, 0x31, 0x8c, 0x31, 0x8c, 0x31, 0x8c, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3f, 0xfc, 0x3f, 0xfc, 0x1, 0x8c, 0x1, 0x8c, 0x1, 0x8c, 0x1, 0x8c, 0x1, 0x8c, 0x0, 0xc, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x7, 0xe0, 0x1f, 0xf8, 0x1c, 0x38, 0x30, 0xc, 0x30, 0xc, 0x30, 0xc, 0x33, 0xc, 0x33, 0xc, 0x3b, 0x1c, 0x1f, 0x38, 0x1f, 0x10, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3f, 0xfc, 0x3f, 0xfc, 0x1, 0x80, 0x1, 0x80, 0x1, 0x80, 0x1, 0x80, 0x1, 0x80, 0x1, 0x80, 0x3f, 0xfc, 0x3f, 0xfc, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3f, 0xfc, 0x3f, 0xfc, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x0, 0x1c, 0x0, 0x38, 0x0, 0x30, 0x0, 0x30, 0x0, 0x38, 0x0, 0x1f, 0xfc, 0xf, 0xfc, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3f, 0xfc, 0x3f, 0xfc, 0x3, 0x0, 0x1, 0x80, 0x0, 0xc0, 0x1, 0xe0, 0x7, 0xb0, 0xe, 0x18, 0x3c, 0xc, 0x30, 0x4, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3f, 0xfc, 0x3f, 0xfc, 0x30, 0x0, 0x30, 0x0, 0x30, 0x0, 0x30, 0x0, 0x30, 0x0, 0x30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x3f, 0xfc, 0x3f, 0xfc, 0x0, 0x3c, 0x3, 0xf0, 0x1f, 0x80, 0x3c, 0x0, 0x1f, 0x80, 0x3, 0xf0, 0x0, 0x3c, 0x3f, 0xfc, 0x3f, 0xfc, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3f, 0xfc, 0x3f, 0xfc, 0x0, 0x38, 0x0, 0x70, 0x1, 0xc0, 0x3, 0x80, 0xe, 0x0, 0x1c, 0x0, 0x3f, 0xfc, 0x3f, 0xfc, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x7, 0xe0, 0x1f, 0xf8, 0x18, 0x18, 0x30, 0xc, 0x30, 0xc, 0x30, 0xc, 0x30, 0xc, 0x30, 0xc, 0x18, 0x18, 0x1f, 0xf8, 0x7, 0xe0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3f, 0xfc, 0x3f, 0xfc, 0x1, 0x8c, 0x1, 0x8c, 0x1, 0x8c, 0x1, 0x8c, 0x1, 0xdc, 0x0, 0xf8, 0x0, 0x70, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x7, 0xe0, 0x1f, 0xf8, 0x18, 0x18, 0x30, 0xc, 0x30, 0xc, 0x34, 0xc, 0x3c, 0xc, 0x18, 0xc, 0x3c, 0x18, 0x7f, 0xf8, 0x47, 0xe0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3f, 0xfc, 0x3f, 0xfc, 0x1, 0x8c, 0x1, 0x8c, 0x1, 0x8c, 0x3, 0x8c, 0x7, 0x8c, 0x1e, 0xdc, 0x3c, 0xf8, 0x30, 0x70, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x70, 0x1c, 0xf8, 0x38, 0xdc, 0x31, 0xcc, 0x31, 0x8c, 0x31, 0x8c, 0x3b, 0x9c, 0x1f, 0x38, 0xe, 0x30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x0, 0xc, 0x0, 0xc, 0x0, 0xc, 0x3f, 0xfc, 0x3f, 0xfc, 0x0, 0xc, 0x0, 0xc, 0x0, 0xc, 0x0, 0xc, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0xfc, 0x1f, 0xfc, 0x38, 0x0, 0x30, 0x0, 0x30, 0x0, 0x30, 0x0, 0x30, 0x0, 0x38, 0x0, 0x1f, 0xfc, 0xf, 0xfc, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x4, 0x0, 0x3c, 0x1, 0xf8, 0x7, 0xc0, 0x3f, 0x0, 0x38, 0x0, 0x3f, 0x0, 0x7, 0xc0, 0x1, 0xf8, 0x0, 0x3c, 0x0, 0x4, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x1c, 0x3, 0xfc, 0x3f, 0xe0, 0x3c, 0x0, 0x3f, 0xe0, 0x3, 0xfc, 0x0, 0x1c, 0x3, 0xfc, 0x3f, 0xe0, 0x3c, 0x0, 0x3f, 0xe0, 0x3, 0xfc, 0x0, 0x1c, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x30, 0xc, 0x38, 0x1c, 0x1e, 0x78, 0x7, 0xe0, 0x3, 0xc0, 0x7, 0xe0, 0x1e, 0x78, 0x38, 0x1c, 0x30, 0xc, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x0, 0x1c, 0x0, 0x78, 0x0, 0xe0, 0x3f, 0x80, 0x3f, 0x80, 0x0, 0xe0, 0x0, 0x78, 0x0, 0x1c, 0x0, 0xc, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x30, 0x0, 0x38, 0xc, 0x3e, 0xc, 0x37, 0xc, 0x33, 0xcc, 0x30, 0xec, 0x30, 0x7c, 0x30, 0x1c, 0x30, 0xc, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x7f, 0xfe, 0x7f, 0xfe, 0x60, 0x6, 0x60, 0x6, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x0, 0xfc, 0xf, 0xf0, 0x3f, 0x0, 0x30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x60, 0x6, 0x60, 0x6, 0x7f, 0xfe, 0x7f, 0xfe, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x80, 0x0, 0xf0, 0x0, 0x7c, 0x0, 0xe, 0x0, 0xe, 0x0, 0x7c, 0x0, 0xf0, 0x0, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x60, 0x0, 0x60, 0x0, 0x60, 0x0, 0x60, 0x0, 0x60, 0x0, 0x60, 0x0, 0x60, 0x0, 0x60, 0x0, 0x60, 0x0, 0x60, 0x0, 0x60, 0x0, 0x60, 0x0, 0x60, 0x0, 0x60, 0x0, 0x60, 0x0, 0x60, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x4, 0x0, 0xc, 0x0, 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xe, 0x60, 0x1f, 0x70, 0x1b, 0x30, 0x19, 0xb0, 0x19, 0xb0, 0xf, 0xf0, 0x1f, 0xe0, 0x10, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1f, 0xfe, 0x1f, 0xfe, 0xc, 0x60, 0x18, 0x30, 0x18, 0x30, 0x1c, 0x70, 0xf, 0xe0, 0x7, 0xc0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x7, 0xc0, 0xf, 0xe0, 0x1c, 0x70, 0x18, 0x30, 0x18, 0x30, 0x1c, 0x70, 0xc, 0x60, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x7, 0xc0, 0xf, 0xe0, 0x1c, 0x70, 0x18, 0x30, 0x18, 0x30, 0xc, 0x60, 0x1f, 0xfe, 0x1f, 0xfe, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x7, 0xc0, 0xf, 0xe0, 0x1d, 0xb0, 0x19, 0xb0, 0x19, 0xb0, 0xd, 0xe0, 0x5, 0xc0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x30, 0x1f, 0xfc, 0x1f, 0xfe, 0x0, 0x36, 0x0, 0x36, 0x0, 0x6, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x33, 0xe0, 0x77, 0xf0, 0x6e, 0x38, 0x6c, 0x18, 0x6c, 0x18, 0x66, 0x30, 0x7f, 0xf8, 0x3f, 0xf8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1f, 0xfe, 0x1f, 0xfe, 0x0, 0x60, 0x0, 0x30, 0x0, 0x30, 0x0, 0x30, 0x1f, 0xf0, 0x1f, 0xe0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1f, 0xec, 0x1f, 0xec, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc0, 0x0, 0xc0, 0x0, 0xff, 0xec, 0x7f, 0xec, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1f, 0xfe, 0x1f, 0xfe, 0x3, 0x80, 0x1, 0xc0, 0x7, 0xe0, 0x1f, 0x30, 0x18, 0x10, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1f, 0xfe, 0x1f, 0xfe, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x1f, 0xf0, 0x1f, 0xf0, 0x0, 0x60, 0x0, 0x30, 0x0, 0x30, 0x1f, 0xf0, 0x1f, 0xe0, 0x0, 0x60, 0x0, 0x30, 0x0, 0x30, 0x1f, 0xf0, 0x1f, 0xe0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1f, 0xf0, 0x1f, 0xf0, 0x0, 0x60, 0x0, 0x30, 0x0, 0x30, 0x0, 0x30, 0x1f, 0xf0, 0x1f, 0xe0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x7, 0xc0, 0xf, 0xe0, 0x1c, 0x70, 0x18, 0x30, 0x18, 0x30, 0x1c, 0x70, 0xf, 0xe0, 0x7, 0xc0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xff, 0xf0, 0xff, 0xf0, 0xc, 0x60, 0x18, 0x30, 0x18, 0x30, 0x1c, 0x70, 0xf, 0xe0, 0x7, 0xc0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x7, 0xc0, 0xf, 0xe0, 0x1c, 0x70, 0x18, 0x30, 0x18, 0x30, 0xc, 0x60, 0xff, 0xf0, 0xff, 0xf0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1f, 0xf0, 0x1f, 0xf0, 0x0, 0x60, 0x0, 0x30, 0x0, 0x30, 0x0, 0x30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0xe0, 0x1d, 0xf0, 0x19, 0xb0, 0x19, 0xb0, 0x1b, 0x30, 0x1f, 0x70, 0xe, 0x60, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x30, 0xf, 0xfc, 0x1f, 0xfe, 0x18, 0x30, 0x18, 0x30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0xf0, 0x1f, 0xf0, 0x18, 0x0, 0x18, 0x0, 0x18, 0x0, 0xc, 0x0, 0x1f, 0xf0, 0x1f, 0xf0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x70, 0x3, 0xf0, 0x1f, 0x80, 0x1c, 0x0, 0x1f, 0x80, 0x3, 0xf0, 0x0, 0x70, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x30, 0x3, 0xf0, 0x1f, 0xc0, 0x1c, 0x0, 0x1f, 0x80, 0x3, 0xf0, 0x0, 0x70, 0x3, 0xf0, 0x1f, 0x80, 0x1c, 0x0, 0x1f, 0xc0, 0x3, 0xf0, 0x0, 0x30, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x18, 0x30, 0x1c, 0x70, 0xf, 0xe0, 0x3, 0x80, 0xf, 0xe0, 0x1c, 0x70, 0x18, 0x30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x30, 0xc0, 0xf0, 0xc7, 0xc0, 0xff, 0x0, 0x7c, 0x0, 0x1f, 0x0, 0x7, 0xc0, 0x0, 0xf0, 0x0, 0x30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x18, 0x30, 0x1e, 0x30, 0x1f, 0x30, 0x1b, 0xb0, 0x19, 0xf0, 0x18, 0xf0, 0x18, 0x30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc0, 0x0, 0xc0, 0x3f, 0xfe, 0x7f, 0x3f, 0x60, 0x3, 0x60, 0x3, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xff, 0xff, 0xff, 0xff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x60, 0x3, 0x60, 0x3, 0x7f, 0x3f, 0x3f, 0xfe, 0x0, 0xc0, 0x0, 0xc0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x18, 0x0, 0xc, 0x0, 0xc, 0x0, 0xc, 0x0, 0x1c, 0x0, 0x18, 0x0, 0x18, 0x0, 0x18, 0x0, 0xc, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
                              };