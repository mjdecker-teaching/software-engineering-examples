#define BOOST_TEST_MODULE palindrome
#include <boost/test/included/unit_test.hpp>
#include "palindrome.hpp"

BOOST_AUTO_TEST_CASE(empty) {
    BOOST_TEST(is_palindrome(""));
}

BOOST_AUTO_TEST_CASE(simple_not_palindrome) {
    BOOST_TEST(!is_palindrome("no"));
}

BOOST_AUTO_TEST_CASE(simple_is_palindrome) {
    BOOST_TEST(is_palindrome("aa"));
}

BOOST_AUTO_TEST_CASE(yes_not_palindrome) {
    BOOST_TEST(!is_palindrome("roar"));
}
