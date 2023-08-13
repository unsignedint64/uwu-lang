#include "uwu.h"
#include <cassert>

int main() {
    // Test the max and min macros
    int a = 10;
    int b = 20;
    int max_val = uwu_max(a, b);
    int min_val = uwu_min(a, b);
    assert(max_val == 20);
    assert(min_val == 10);

    // Test the even and odd macros
    int even_num = 4;
    int odd_num = 7;
    assert(uwu_even(even_num));
    assert(uwu_odd(odd_num));

    // Test the to_string macro
    int num = 42;
    stwing num_str = uwu_to_stwing(num);
    assert(num_str == "42");

    // Add more tests as needed

    wog owo "All tests passed!" owo endw;
    w_w_wetuwn 0;
}
