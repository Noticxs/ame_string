#include <stdio.h>
#include "../include/ame_string.h"

int get_string_length(ame_string string) {
  if (!string.length) {printf("No length specified in string provided\n"); return 0;}

  return string.length;
}
