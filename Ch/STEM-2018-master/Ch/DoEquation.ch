/*
Programmer: Matthew Reese
Period: 2
Date: 10-3-2018

File: DoEquation.ch
Purpose: To get a user input slope
equation and solve it.
*/

/*These are include preprocessors, all they do is get the contents
of the respective include file and copy and paste it here*/
#include <stdio.h> // Include preprocessor for the standered i/o library (input/output)
#include <stdbool.h> // Include preprocessor for the standered boolean library
#include <stdlib.h> // Include preprocessor for the standered libraries

void start_equ();
string_t parse_equ();
int find_char_pos(char *string, char find);

#define MAX_SIGNS 10

/*This is the entry point of all C/C++ programs.
It is not needed here in Ch, but it will still
work with it. I prefer it because of habit with
C and C++.
*/


/*The first parameter of this function is argc, this is the number of arguments the program is taking in.
By default, this is one. The next parameter, a char double pointer, argv, is an array of words that can be
passed into the program as arguments. By default there is one word, and it is the filename.*/
int main(int argc, char *argv) 
{    
    start_equ(); //calls the "start_equ" function with no arguments
    return 0; //ends the program and returns with a good output. Any other output than 0 signals an error.
}

void start_equ()
{
    char equation[15]; // The variable where the raw user input string will be stored.
    string_t result; // The final result; in string format
    
    bool continue_equ = true; //whether the while loop should continue or not
    
    
    while(continue_equ)
    {
        printf("Please input a slope equation that you would like solved: "); // Prints to the console telling the user to input an equation
        scanf("%s", equation); //Gets user input and passes in the address of the equation variable
        
        result = parse_equ(equation); //. Assigning the variable result to the equation parsed
    }
}

string_t parse_equ(char *equation)
{
    
    float y_intercept; // The y-intercept of the slope equation
    float x_intercept; // The x-intercept of the slope equation
    double slope; // The slope
    bool isStanderedForm = false; // If true than equation is in standered form, if false than in intercept form
    
    
    /*These statements will be
    declaring all of the positions
    of the characters in the equation*/
    int y_pos = (find_char_pos(equation, 'y'));
    int x_pos = (find_char_pos(equation, 'x'));
    int equal_pos = (find_char_pos(equation, '='));
    
    if(y_pos < equal_pos && x_pos < equal_pos) // Checking if the equation is in standered form
        isStanderedForm=true;
    
    
    int addition_signs[MAX_SIGNS], a_pos = 0;
    int subtraction_signs[MAX_SIGNS], s_pos = 0;
    int multliplication_signs[MAX_SIGNS], m_pos = 0;
    int division_signs[MAX_SIGNS], d_pos = 0;
    
    int counter;
    for(counter=0;counter<(strlen(equation));counter++)
    {
        switch(equation[counter])
        {
            case '+':
                addition_signs[a_pos] = counter;
                a_pos++;
                break;
            case '-':
                subtraction_signs[s_pos] = counter;
                s_pos++;
              break;
            case '*':
                multliplication_signs[m_pos] = counter;
                m_pos++;
                break;
            case '/':
                division_signs[d_pos] = counter;
                d_pos++;
                break;
        }
    }
    
    int numbers[MAX_SIGNS], num_pos = 0;
    int numbers_position[MAX_SIGNS];
    
    int current_num = 0;
    
    bool negative;
    
    for(counter=0;counter<(strlen(equation));counter++)
    {
        negative = false;
        if(!isdigit(equation[counter]))
            continue;
        current_num = equation[counter];
        int adder = 1;
        if(equation[counter-1] == '-') negative = true;
        while(isdigit(equation[++counter]))
        {
            current_num *= 10;
            current_num += equation[counter + adder];
            adder++;
        }
        if(negative) numbers[num_pos] = -current_num;
        else numbers[num_pos] = current_num;
        numbers_position[num_pos] = counter;
        num_pos++;
    }        
    
    if(num_pos == 1 && numbers_position[0] > x_pos && numbers_position[0] > x_pos)
    {
        y_intercept = numbers_position[0];
    }
    
    string_t result; // The result of the whole function, the return value
    
    return result; // Returning the result
}



/*This function will be used
to find the position of a character in
a string. It takes in the length of the string,
the string, and the character you wat to find*/

int find_char_pos(char *string, char find)
{
    int i;
    int length = strlen(string);
    for(i = 0; i < length; i++) // A for loop that goes through every character in the string
    {
        if(find == string[i]) // Checking if the current character is the one you want
        {
            return i; // If it is then return i
        }
    }
    return -1;
}


