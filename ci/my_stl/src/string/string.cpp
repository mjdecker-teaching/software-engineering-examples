#include "string.hpp"

string_t::string_t() {
  string_size = 1;
  str = new char[string_size];
  str[0] = '\0';
}

string_t::string_t(char ch) {
  string_size = 2;
  str = new char[string_size];
  str[0] = ch;
  str[1] = '\0';
}

string_t::string_t(const char cstring_t[]) {
  int len = 0;
  while (cstring_t[len] != '\0') {
    ++len;
  }
  
  string_size = len + 1;
  str = new char[string_size];
  
  for (int i = 0; i < len; ++i) {
    str[i] = cstring_t[i];
  }

  str[len] = '\0';
}

string_t::string_t(const string_t& other) {
  string_size = other.string_size;
  str = new char[string_size];

  int index = 0;  
  while (other.str[index] != '\0') {
    str[index] = other.str[index];
    ++index;
  }
  
  str[index] = other.str[index];
}

string_t::string_t(int size) {
  string_size = size;
  str = new char[string_size];
  str[0] = '\0';
}

string_t::string_t(int size, const char* other) {
  string_size = size;
  str = new char[string_size];

  int index = 0;
  while (other[index] != '\0') {
    str[index] = other[index];
    ++index;
  }
  
  str[index] = other[index];
}

string_t::~string_t(){
  delete[] str;
}

void string_t::reset_capacity (int size) {
  char* temp = str;
  string_size = size;
  str = new char[string_size];
  
  int index = 0;
  while (temp[index] != '\0') {
    str[index] = temp[index];
    ++index;
  }

  str[index] = temp[index];
  delete[] temp;
}

int string_t::capacity() const {
  return string_size - 1;
}

int string_t::length() const {
  int len = 0;
  
  while(str[len] != '\0') {
    ++len;
  }
  
  return len;
}

string_t string_t::substr(int start_pos, int count) const {  
  int str_len = length();
  string_t sub;

  for (int i = 0; i < count; ++i) {
    if ((start_pos + i) > str_len)
      break;

    sub += str[start_pos + i];
  }

  return sub;
}


std::vector<string_t> string_t::split(char delim) const {
  int str_len = length();
  string_t temp;
  std::vector<string_t> fields;

  for (int i = 0; i < str_len; ++i) {
    if (str[i] == delim) {
      fields.push_back(temp);
      temp = "";
      continue;
    }
    temp += str[i];
  }

  fields.push_back(temp);
  return fields;
}

int string_t::find(char ch, int start_pos) const {
  int pos = -1;
  
  if (start_pos >= length())
    return pos;

  for (int i = start_pos; i < length(); ++i) {
    if (str[i] == ch) {
      pos = i;
      break;
    }
  }

  return pos;
}

int string_t::find(const string_t & s, int start_pos) const {
  int pos = find(s.str[0], start_pos);
  bool found = false;
  int sub_len = s.length();

  while (pos != -1) {

    for (int i = 0; i < sub_len; ++i) {
      if (str[pos + i] != s[i])
	break;

      if (i == (sub_len - 1))
	found = true;
    }
 
   if (found)
      break;

    pos = find(s.str[0], pos + 1);
  }
  return pos;
}

void string_t::swap(string_t& other) {
  char* temp = str;
  str = other.str;
  other.str = temp;

  int temp_size = string_size;
  string_size = other.string_size;
  other.string_size = temp_size;
}

string_t& string_t::operator=(string_t rhs) {
  swap(rhs);
  return *this;
}

bool string_t::operator==(const string_t& rhs) const {
  int index = 0;
  
  while (str[index] != '\0' && rhs.str[index] != '\0') {
    if (str[index] != rhs.str[index]) {
      return false;
    }
    ++index;
  }

  return str[index] == rhs.str[index];
}

bool string_t::operator< (const string_t& rhs)  const {
  int index = 0;
  
  while (str[index] != '\0' && rhs.str[index] != '\0' && str[index] == rhs.str[index]) {
    ++index;
  }

  return str[index] < rhs.str[index];
}


string_t string_t::operator+ (const string_t& rhs) const {
  int offset = length();

  string_t result = string_t((offset + rhs.length() + 1), str);
  
  int index = 0;
  while (rhs.str[index] != '\0') {
    result.str[offset] = rhs.str[index];
    ++offset;
    ++index;
  }

  result.str[offset] = rhs.str[index];
  
  return result;
}


string_t& string_t::operator+=(string_t rhs) {
  int offset = length();
  reset_capacity(offset + rhs.length() + 1);

  int index = 0;
  while(rhs.str[index] != '\0') {
    str[offset] = rhs.str[index];
    ++offset;
    ++index;
  }

  str[offset] = rhs.str[index];
  return *this;
}


char& string_t::operator[](int index) {
  return str[index];
}

char string_t::operator[](int index) const {
  return str[index];
}

std::ostream& operator<<(std::ostream& out, const string_t& data) {
  for (int i = 0; i < data.length(); ++i) {
    out << data[i];
  }
  return out;
}

std::istream& operator>>(std::istream& in, string_t& word) {
  word = "";
  char raw_data[256];
  
  if (in >> raw_data) {
    word = string_t(raw_data);
  }
 
  return in;
}

string_t operator+ (const char* lhs, const string_t& rhs) {
  return string_t(lhs) + rhs;
}

string_t operator+ (char lhs, const string_t& rhs) {
  return string_t(lhs) + rhs;
}

bool operator== (const char* lhs, const string_t& rhs) {
  return string_t(lhs) == rhs;
}

bool operator== (char lhs, const string_t& rhs) {
  return string_t(lhs) == rhs;
}

bool operator< (const char* lhs, const string_t& rhs) {
  return string_t(lhs) < rhs;
}

bool operator< (char lhs, const string_t& rhs) {
  return string_t(lhs) < rhs;
}

bool operator<= (const string_t& lhs, const string_t& rhs) {
  if (lhs == rhs || lhs < rhs) {
    return true;
  }

  return false;
}

bool operator!= (const string_t& lhs, const string_t& rhs) {
  return (!(lhs == rhs));
}

bool operator>= (const string_t& lhs, const string_t& rhs) {
  return (!(lhs < rhs));
}

bool operator> (const string_t& lhs, const string_t& rhs) {
  return (!(lhs <= rhs));
}
