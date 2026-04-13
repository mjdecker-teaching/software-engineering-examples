
#ifndef INCLUDED_STRING
#define INCLUDED_STRING

#include <iostream>
#include <vector>

class string_t {
private:
    // helper constructors and methods
    string_t(int);
    string_t(int, const char *);
    void reset_capacity (int);

    char * str;

    // size includes NULL terminator
    int string_size;

public:

    // constructor: empty string_t, string_t('x'), and string_t("abcd")
    string_t();
    string_t(char);
    string_t(const char *);

    // copy ctor, destructor, constant time swap, and assignment
    string_t(const string_t &);
    ~string_t();
    void     swap          (string_t &);
    string_t & operator=     (string_t);

    // subscript: accessor/modifier and accessor
    char & operator[](int);
    char   operator[](int) const;

    // max chars that can be stored (not including null terminator)
    int capacity()      const;
    // number of char in string_t
    int length  ()      const;
    
    // substring_t
    string_t substr(int start_pos, int count) const;
    
    // split a string_t with char delimiter
    std::vector<string_t> split(char) const;

    // find char / string_t index
    int find(char ch, int start_pos) const;
    int find(const string_t & s, int start_pos) const;

    // concatenation
    string_t   operator+ (const string_t &) const;
    string_t & operator+=(string_t);

    // relational methods
    bool operator==(const string_t &)  const;
    bool operator< (const string_t &)  const;

    // i/o
    friend std::ostream& operator<<(std::ostream &, const string_t &);
    friend std::istream& operator>>(std::istream &, string_t &);

};

// free functios for concatenation and relational
string_t operator+     (const char *,     const string_t &);
string_t operator+     (char,             const string_t &);
bool   operator==      (const char *,     const string_t &);
bool   operator==      (char,             const string_t &);
bool   operator<       (const char *,     const string_t &);
bool   operator<       (char,             const string_t &);
bool   operator<=      (const string_t &, const string_t &);
bool   operator!=      (const string_t &, const string_t &);
bool   operator>=      (const string_t &, const string_t &);
bool   operator>       (const string_t &, const string_t &);

#endif
