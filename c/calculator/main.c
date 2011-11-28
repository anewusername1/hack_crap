#include <cstdio>
#include <cmath>
#include <cstdlib>
#include <cstring>

char *get_expression(char *text, size_t size){
  size_t i = 0;
  while(1){
    int ch = fgetc(stdin);
    if(ch == '\n' || ch == EOF)
      break;
    if(i < size - 1)
      text[i++] = ch;
  }
  text[i] = '\0';
  if(strcmp(text, "exit\0"))
    return "e";

  return text;
}

int main(){
  float num1, num2;
  char operation;
  char expression[51];
  const int done = int('e');
  fputs("enter an expresson to be evaluated.\nCurrently supports +-/*\n", stdout);
  fflush(stdout);
  while(1){
    get_expression(expression, sizeof expression);
    printf("done = %i; expression = %s; int(expression) = %i\n", done, expression, int(expression));
    switch(atoi(expression)){
      case done:
        return(0);
        break;
      default:
        fputs("Invalid expression\n", stdout);
    }

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
