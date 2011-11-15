#include <stdio.h>

char *get_expression(char *text, size_t size){
  size_t i = 0;
  for(;;){
    int ch = fgetc(stdin);
    if(ch == '\n' || ch == EOF)
      break;
    if(i < size - 1)
      text[i++] = ch;
  }
  text[i] = '\0';
  return text;
}

int main(){
  float num1, num2;
  char operation;
  char expression[50];
  fputs("enter an expresson to be evaluated.\nCurrently supports +-/*\n", stdout);
  fflush(stdout);
  while(1){
    get_expression(expression, sizeof expression);
    printf("%s\n", expression);
    /* scanf("%f%c%f", &num1, &operation, &num2); */
    /* if(operation == '+') */
      /* printf("%f\n", num1 + num2); */
    /* if(operation == '/') */
      /* printf("%f\n", num1 / num2); */
    /* if(operation == '-') */
      /* printf("%f\n", num1 - num2); */
    /* if(operation == '*') */
      /* printf("%f\n", num1 * num2); */
  }
  return 0;
}
