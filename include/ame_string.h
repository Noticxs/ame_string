#ifndef AME_STRING
#define AME_STRING

typedef struct {
  char *data;
  int length;
} ame_string;

int get_string_length(ame_string string);

#endif // AME_STRING
