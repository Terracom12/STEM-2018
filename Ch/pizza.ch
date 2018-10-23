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

/*The first parameter of this function is argc, this is the number of arguments the program is taking in.
By default, this is one. The next parameter, a char double pointer, argv, is an array of words that can be
passed into the program as arguments. By default there is one word, and it is the filename.*/
int main(int argc, char **argv)
{
    int numStudents = 32; // The Nmber of students in the class
    int slicesPerPizza = 8; // The slices per pizza
    string_t pizzaPlace = "Costco"; // The place that you are ordering the pizza
    int totalPizzas = numStudents/slicesPerPizza; // The total number of pizzas
    
    printf("You ordered: %d pizzas from " + pizzaPlace + "\n", totalPizzas);
}
