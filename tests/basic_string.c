#include "../include/ame_string.h"
#include <stdio.h>

int main(void) {
  ame_string string = {
    .data = "Hellos",
    .length = 4,
  };

  printf("%s\n", string.data);

  int length = get_string_length(string);
  printf("%d\n", length);
}
