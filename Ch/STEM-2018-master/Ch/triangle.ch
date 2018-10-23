/*
Programmer: Matthew Reese
Period: 2
Date: 10-16-2018

File: triangle.ch

Purpose:To take in two
        sides of a right triangle
        and find the length of the
        third side using the pythagoream
        theorm.
*/


double a; // The a side of the triangle
double b; // The b side of the triangle
double c; // The c side of the triangle

string_t unit; // The unit that the user is using

printf("What unit are you using? "); // Asking for the unit
scanf("%s", &unit); // Scanning for the unit
printf("What is one side of your triangle? "); // Asking for a
scanf("%lf", &a); // Scaning for a
printf("What is another side of your triangle? "); // Asking for b
scanf("%lf", &b); // Scanning for b

c = sqrt(pow(a, 2) + pow(b, 2)); // Solving for C the square root of a squared + b squared

printf("Your missing side is: %g %s\n", c, unit); // Telling the user the length of the triangle
