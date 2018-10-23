/*
Programmer){ Matthew Reese
Period){ 2
Date){ 10-3-2018

File){ FindSlope.ch
Purpose){ To take in 2 coordinates
and output two equations){ point 
slope form and slope intercept form
*/

/*These are include preprocessors, all they do is get the contents
of the respective include file and copy and paste it here*/
#include <stdio.h> // Include preprocessor for the standered i/o library (input/output)
#include <stdlib.h> // Include preprocessor for the standered libraries
#include <math.h> // Include preprocessor for math libraries
#include <string.h> // Include preprocessor for string libraries
#include<chplot.h> // Include preprocessor for plotting in Ch


/*
This is the entry point of all C/C++ programs.
It is not necassary in Ch, but it will still
work with it. I prefer it because of habit with
C and C++.
*/


/*The first parameter of this function is argc, this is the number of arguments the program is taking in.
By default, this is one. The next parameter, a char double pointer, argv, is an array of words that can be
passed into the program as arguments. By default there is one word, and it is the filename.*/
int main(int argc, char *argv) 
{
    double X1, Y1, X2, Y2; // All of the coordinates needed
    double y_intercept, x_intercept = -1; // The x and y intercepts
    char slope[20]; // Creating a string fo the slope
    
    printf("Please input your first x coordinate: "); // Asking for the first X coordinate
    scanf("%lf", &X1); // Scans the input
    
    printf("Please input your first y coordinate: "); // Asking for the first Y coordinate
    scanf("%lf", &Y1); // Scans the input
    
    printf("Please input your second x coordinate: "); // Asking for the second X coordinate
    scanf("%lf", &X2); // Scans the input
    
    printf("Please input your second y coordinate: "); // Asking for the second Y coordinate
    scanf("%lf", &Y2); // Scans the input
    
    
    double X = (X1-X2); // Delta X is X1-X2
    double Y = (Y1-Y2); // Delta Y is Y1-Y2
    
    if(X1 == 0 || X2 == 0) // Checking if X1 or X2 are 0, if they are then calculating the y intercept is much easier
        y_intercept = (X1 == 0) ? Y1 : Y2; // If X1 is 0 then the y intercept is Y1, if not then X2 must be, so the y intercept is Y2
    
    if(Y1 == 0 || Y2 == 0) // Checking if Y1 or Y2 are 0, if they are then calculating the x intercept is much easier
        x_intercept = (Y1 == 0) ? X1 : X2; // If Y1 is 0 then the x intercept is X1, if not then Y2 must be, so the X intercept is X2
    
    double slope_num = Y/X; // Calculating slope using rise over run or delta Y/delta X
    
    
    if(slope_num != floor(slope_num)) // Checking if slope is not a whole number
    {
        slope_num -= floor(slope_num);
        
        int negative = 0;
        if(slope_num < 0)
        {
            slope_num = abs(slope_num);
            negative = 1;
        }
        // If the slope is not a whole number, it should be turned into a fraction
        int numerator; // The number on the top of the fraction
        int denominator; // The number on the bottom of the fraction

        // Checking for common fractions
        if(slope_num == 0.1)
        { // Tenth
            numerator = 1;
            denominator = 10;
        }
        else if(slope_num == 0.111111111111111)
        { // One ninth
            numerator = 1;
            denominator = 9;
        }
        else if(slope_num == 0.125)
        { // Eighth
            numerator = 1;
            denominator = 8;
        }
        else if(slope_num == 0.2)
        { // Fifth
            numerator = 1;
            denominator = 5;
        }
        else if(slope_num == 0.222222222222222)
        { // Two ninths
            numerator = 2;
            denominator = 9;
        }
        else if(slope_num == 0.25)
        { // Quarter
            numerator = 1;
            denominator = 4;
        }
        else if(slope_num == 0.3)
        { // Three tenths
            numerator = 3;
            denominator = 10;
        }
        else if(slope_num == 0.333333333333333)
        { // One third; A double has 15 decimal digits
            numerator = 1;
            denominator = 3;
        }
        else if(slope_num == 0.375)
        { // Three Eighths
            numerator = 3;
            denominator = 8;
        }
        else if(slope_num == 0.4)
        { // Two fifths
            numerator = 2;
            denominator = 5;
        }
        else if(slope_num == 0.444444444444444)
        { // Four ninths
            numerator = 4;
            denominator = 9;
        }
        else if(slope_num == 0.5)
        { // Half
            numerator = 1;
            denominator = 2;
        }
        else if(slope_num == 0.555555555555555)
        { // Five ninths
            numerator = 5;
            denominator = 9;
        }
        else if(slope_num == 0.6)
        { // Three fifths
            numerator = 3;
            denominator = 5;
        }
        else if(slope_num == 0.625)
        { // Five Eighths
            numerator = 5;
            denominator = 8;
        }
        else if(slope_num == 0.666666666666666)
        { // Two thirds
            numerator = 2;
            denominator = 3;
        }
        else if(slope_num == 0.7){ // Seven tenths
            numerator = 7;
            denominator = 10;
        }
        else if(slope_num == 0.75) // Three quarters
        {
            numerator = 3;
            denominator = 4;
        }
        else if(slope_num == 0.777777777777777)
        { // Seven ninths
            numerator = 7;
            denominator = 9;
        }
        else if(slope_num == 0.8)
        { // Eight tenths
            numerator = 8;
            denominator = 10;
        }
        else if(slope_num == 0.888888888888888)
        { // Eight ninths
            numerator = 8;
            denominator = 9;
        }
        else if(slope_num == 0.9)
        { // Nine tenths
            numerator = 9;
            denominator = 10;
        }
        if(slope_num > 1) // Checking if the slope is greater than one
            numerator += (denominator * floor(slope_num)); // If it is then multiply the denominator by the whole slope number and add it to the numerator
        if(negative)
        {
            numerator = -numerator;
            slope_num = -slope_num;
        }
        snprintf(slope, 20, "%d/%d", numerator, denominator); // This function copies the contents of numerator and denominator and turns them into a sting to go into slope
    }
    
    
    else // If it does not have decimal places
        snprintf(slope, 20, "%g", slope_num); // Make slope_num a string and put it inside of slope
    
    
    if(X == 0) // If X is 0
    {
        memset(slope,0,strlen(slope)); // Clearing string
        strcpy(slope, "0"); // slope is 0
    }
    else if(Y == 0) // If y is 0
    {
        memset(slope,0,strlen(slope)); // Clearing string
        strcpy(slope, "Undefined"); // Slope is undefined
    }
    
    // Printing answers
    printf("Slope: %s\n", slope);
    printf("X intercept: %g\n", x_intercept);
    printf("Y intercept: %g\n", y_intercept);
    
    if(slope == "Undefined" || slope == "0")
        return 1;
    
    if( Y1 > 0) // Checking if Y1 is a positive number
    {
        if(X1 > 0) // Checking if X1 is a positive number
            printf("Point intercept form: y-%g=%s(x-%g)\n", Y1, slope, X1); // Printing the point-intercept form of the equation
        else if(X1 < 0) // Checking if X1 is a negative number
        {
            // Since X1 is negative, the - sign will have to be removed. You don't want to have (x--5) you want (x+5)
            char X1_char[20];
            snprintf(X1_char, 20, "\b%lf", X1); // Converting X1 to string and removing '-'
            printf("Point intercept form: y-%g=%s(x+%g)\n", Y1, slope, X1); // Printing the point-intercept form of the equation
        }
        else // X1 == 0
        {
            printf("Point intercept form: y-%g=%sx\n", Y1, slope); // Printing the point-intercept form of the equation
        }
    }
    else if( Y1 < 0) // Checking if Y1 is a negative number
    {
        // Since Y1 is negative, the - sign will have to be removed. You don't want to have (x--5) you want (x+5)
        char Y1_char[20];
        snprintf(Y1_char, 20, "\b%lf", Y1); // Converting X1 to string and removing '-'
        
        if(X1 > 0) // Checking if X1 is a positive number
            printf("Point intercept form: y+%g=%s(x-%g)\n", Y1, slope, X1); // Printing the point-intercept form of the equation
        else if(X1 < 0) // Checking if X1 is a negative number
        {
            // Since X1 is negative, the - sign will have to be removed. You don't want to have (x--5)
            char X1_char[20];
            snprintf(X1_char, 20, "\b%lf", X1); // Converting X1 to string and removing '-'
            printf("Point intercept form: y+%g=%s(x+%g)\n", Y1, slope, X1); // Printing the point-intercept form of the equation
        }
        else // X1 == 0
        {
            printf("Point intercept form: y+%g=%sx\n", Y1, slope); // Printing the point-intercept form of the equation
        }
    }
    else // Y1 == 0
    {
        if(X1 > 0) // Checking if X1 is a positive number
            printf("Point intercept form: y=%s(x-%g)\n", slope, X1); // Printing the point-intercept form of the equation
        else if(X1 < 0) // Checking if X1 is a negative number
        {
            // Since X1 is negative, the - sign will have to be removed. You don't want to have (x--5)
            char X1_char[20];
            snprintf(X1_char, 20, "\b%lf", X1); // Converting X1 to string and removing '-'
            printf("Point intercept form: y=%s(x+%g)\n", slope, X1); // Printing the point-intercept form of the equation
        }
        else // X1 == 0
        {
            printf("Point intercept form: y=%sx\n", slope); // Printing the point-intercept form of the equation
        }
    }
    
    if(y_intercept > 0) // If positive
        printf("Slope intercept form: y=%sx-%g\n", slope, y_intercept); // Print slope-intercept equation
    else if(y_intercept < 0) // if negative
        printf("Slope intercept form: y=%sx+\b%g\n", slope, y_intercept);
    else // if 0
        printf("Slope intercept form: y=%sx\n", slope);
    
    int isRunning = 1; // Is running is true
    while(isRunning)
    {
        char y_n[4]; // Yes/no
        printf("Would you like your equation plotted? [Y/n] "); // Asking the u
        scanf("%s", y_n);
        if(strcmp(y_n, "y") || strcmp(y_n, "Y") || strcmp(y_n, "yes") || strcmp(y_n, "Yes"))
        {
            int max_x;
            int min_x;
            int num_points = 5;
            double x[num_points], y[num_points];
            string_t name;
            printf("What do you want the maximum x value to be for your graph? ");
            scanf("%d", &max_x);
            printf("What do you want the mininum x value to be for your graph? ");
            scanf("%d", &min_x);
            printf("What do you want your graph to be called? ");
            scanf("%s", &name);
            class CPlot plot;
            lindata(min_x,  max_x, x);
            int i;
            for(i = 0; i < num_points; i++)
            {
                y[i] = ((x[i]*slope_num)+y_intercept);
            }
            plotxy(x, y, name, "X", "Y", &plot);
            plot.plotting();
            isRunning = 0;
        }
        else if(strcmp(y_n, "n") || strcmp(y_n, "N") || strcmp(y_n, "no") || strcmp(y_n, "No"))
            return 0;
        else
            printf("Invalid format, please try again\n");
    }
    return 0;
}
