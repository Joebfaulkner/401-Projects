#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
int strBool(char a[], char b[])
{
    char* p1 = &a[0];
    char* p2 = &b[0];
    while(*p1 != '\0' && *p2 != '\0')
    {
        if(*p1 != *p2)
        {
            return 0;
        }
        p1++;
        p2++;
    }
    return 1;
}
int myDir(char a[])
{
    char b[80] = "mydir";
    char* p1 = &a[0];
    char* p2 = &b[0];
    int i = 0;
    while(i <= 5)
    {
        if(*p1 != *p2)
        {
            return 0;
        }
        p1++;
        p2++;
        i++;
    }
    return 1;
}
void dir(char * dir, char a[])
{
    char* p1 = &a[5];
    char b[80];
    int i = 0;
    while(*p1 != '\0')
    {
        b[i] = *p1;
    }
    *dir = *b;
}
int listEnviron()
{
    extern char **environ;   
    char ** env = environ;
    while (*env) 
      printf("%s\n",*env++);
}
int main ()
{
    int running = 1;
    while (running == 1)
    {
        printf(">>>");
        char s[80];
        scanf("%s", s);
        if(strBool(s, "myclear") == 1)
        {
            system("clear");
        }
        else if(strBool(s, "myenviron") == 1)
        {
            listEnviron();
        }
        else if(strBool(s, "myquit") == 1)
        {
            running = 0;
        }
        else if(myDir(s) == 1)
        {
            char directory [80];
            dir(directory, s);
            char command [80] = "ls -al ";
            strcat(command, directory);
            system(command);
        }
        else
        {
            system(s);
        }
    }
}
