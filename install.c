#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
  FILE *ftpr;
  system("cat list.txt");

  printf("Are those programs that you want to install?\n Enter yes or no:\n");

  char confirm[10];

  scanf("%9s", confirm);
  char no[] = "no";
  int result = strcmp(confirm, no);

  if (result == 0) {
    printf("Then modify file list.txt and run script again\n");
    exit(0);
  }

  ftpr = fopen("list.txt", "r");
  if (ftpr == NULL) {
    printf("Error opening file that contains list of softwear. Make sure that "
           "it exists.\n");
    return 1;
  }

  char file_content[100];

  while (fgets(file_content, sizeof(file_content), ftpr)) {
    char command[] = "sudo pacman -S ";
    strcat(command, file_content);
    system(command);
  }
  fclose(ftpr);

  return 0;
}
