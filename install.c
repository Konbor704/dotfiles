#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
  FILE *ftpr;
  system("cat list.conf");

  printf("Are those programs that you want to install?\n Enter yes or no:\n");

  char confirm;

  scanf("%c", &confirm);
  char no = 'n';
  // int result = strcmp(confirm, no);

  if (confirm == no) {
    printf("Then modify file list.txt and run script again\n");
    exit(0);
  }

  ftpr = fopen("list.conf", "r");
  if (ftpr == NULL) {
    printf("Error opening file that contains list of softwear. Make sure that "
           "it exists.\n");
    return 1;
  }

  char file_content[100];
  char command[] = "sudo pacman -S ";

  while (fgets(file_content, sizeof(file_content), ftpr)) {
    strcat(command, file_content);
    system(command);
  }

  fclose(ftpr);

  system("stow .");

  return 0;
}
