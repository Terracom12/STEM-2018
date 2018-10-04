/*
Programmer: Matthew Reese
Period: 2
Date: 10-3-2018

File: DoEquation.ch
Purpose: To get a user input slope
equation and solve it.
*/


//This is the entry point of all C/C++ programs.
//It is not needed here in Ch, but it will still
//work with it.

/*//The first parameter of this function is argc, this is the number of arguments the program is taking in.
By default, this is one. The next parameter, a char double pointer, argv, is an array of words that can be
passed into the program as arguments. By default there is one word, and it is the filename.*/
int main(int argc, char **argv) 
{
    start_equ(); //calls the "start_equ" function with no arguments
    return 0; //ends the program and returns with a good output. Any other output than 0 signals an error.
}

void start_equ()
{
    string_t equation; // The variable where the raw user input string will be stored.
    float y_intercept; // The y-intercept of the slope equation
    float x_intercept; // The x-intercept of the slope equation
    double slope; // The slope
    string_t result; // The final result; in string format
    
    bool continue_equ = true; //whether the while loop should continue or not

    while(continue_equ)
    {
        printf("Please input a slope equation that you would like solved: "); // Prints to the console telling the user to input an equation
        scanf("%s", &equation); //Gets user input and passes in the address of the equation variable
        
    }
}


