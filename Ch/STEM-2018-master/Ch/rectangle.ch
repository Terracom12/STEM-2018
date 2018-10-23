/*
Programmer: Matthew Reese
Period: 2
Date: 10-15-2018

File: rectangle.ch
Purpose: To get a user inputed length and width
for a rectangle and solve for the length and width.
*/

double length; // The length of the rectangle
double width; // The width of the rectangle
double perimeter; // The perimeter of the rectangle
double area; // The area of the rectangle

printf("What is the length of your rectangle? "); // Asking the user for the length
scanf("%lf", &length); // Scanning for the length


printf("What is the width of your rectangle? "); // Asking the user for the width
scanf("lf", &width); // Scanning for the width

area = length * width; // Setting the area
perimeter = 2 * (length + width); // Setting the perimeter

printf("Your perimeter is: %.2lf.\nYour area is: %.2lf\n", perimeter, area); // Outputting to the user the perimeter and area

