/**
 * @file palindrome.cpp
 *
 * Implementation file for is_palindrome.
 *
 * @author Michael John Decker, Ph.D. <mdecke@bsgu.edu>
 */

#include "palindrome.hpp"
#include <iostream>

bool is_palindrome(const std::string & str) {
    if(str.size() < 2) return true;
    if(str[0] != str[str.size() - 1]) return false;

    return is_palindrome(str.substr(1, str.size() - 2));
}
