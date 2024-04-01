#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_LINES 1000

void parser() {
  FILE *f;
  f = fopen("list.conf", "r");
  if (f == NULL) {
    printf("Failed to open file\n");
    return;
  }
  char *file_content = NULL;
  size_t len = 0;
  ssize_t read;

  char *lines[MAX_LINES];
  int line_count = 0;

  while ((read = getline(&file_content, &len, f)) != -1) {
    if (file_content[0] != '#') {
      lines[line_count] = malloc(read + 1);
      if (lines[line_count] == NULL) {
        printf("Failed to allocate memory for line\n");
        break;
      }
      strcpy(lines[line_count], file_content);
      line_count++;
    }
  }

  free(file_content);
  fclose(f);

  char all_lines[100];

  for (int i = 0; i < line_count; i++) {
    // printf("Line %d: %s", i + 1, lines[i]);
    strcat(all_lines, lines[i]);
    free(lines[i]);
  }
  printf("%s", all_lines);
}

int main() {
  printf("Are those programs that you want to install?\n Enter yes or no:\n");

  char confirm[10];
  fgets(confirm, sizeof(confirm), stdin);
  confirm[strcspn(confirm, "\n")] = 0;

  char no[] = "no";
  int result = strcmp(confirm, no);

  if (result == 0) {
    printf("Then modify file list.txt and run script again\n");
    exit(0);
  }

  parser();

  system("stow .");

  return 0;
}
