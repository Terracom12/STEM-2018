/*File: Hello
Prints Hello World and whatever you want to*/

#include <stdio.h>

int main(int argc, char** argv)
{
    FILE *file;
    char say[50];
    char filename[30];
    printf("Hello World\nWhat would you like to say? ");
    scanf("%s", say);
    printf("You said: " + say + "\n");
    
    printf("Which file would you linke to open and read? ");
    scanf("%s", filename);
    file = fopen("./hi.txt", "rt");    
    
    
    if (!file)
    {
        printf("Error: invalid file!");
        return 1;
    }
    
    fseek(file, 0, SEEK_END);
    
    unsigned int fileLength = ftell(file);
    
    const char *data = new char[fileLength + 1];
    memset(data, 0, fileLength + 1);
    fseek(file, 0, SEEK_SET);
    fread(data, 1, fileLength, file);
    fclose(file);
    
    printf(data);
    
    return 0;

}
