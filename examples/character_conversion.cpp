#include "uwu_defines.h"

int main() {
    chaw ch = 'A';
    int ch_int = uwu_chaw_to_int(ch);
    chaw int_ch = uwu_int_to_chaw(65);

    pwint_fowmat("Character '%c' as integer: %d\n", ch, ch_int);
    pwint_fowmat("Integer '%d' as character: '%c'\n", 65, int_ch);

    w_w_wetuwn 0;
}
