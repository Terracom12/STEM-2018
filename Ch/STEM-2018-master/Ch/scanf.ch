/*Name: Matthew Reese
Purpose: TO LEARN about scanf and use it to ask about pizzas
Program: scanf.ch
*/

string_t place; // Where to buy the pizza
double tax = 0.075; // Tax percentage
double total; // Final amount to pay
int amount; // Number of pizzas
double cost;  // Cost per pizza

printf("Where do you want to buy your pizzas? "); // Asks the user for the place
scanf("%s", &place); // Gets the place
printf("How many pizzas do you want from %s? ", place); // Asks the user how many pizzas they want
scanf("%d", &amount); // Gets how many they want
printf("How much do they cost each? "); // Asks how much they cost each
scanf("%lf",  &cost); // Gets how much they cost each
total=(amount*cost)*(tax+1); // Gets the total: (amount*cost)*tax
printf("You are going to eat at %s. You will buy %d pizzas and they will cost a total of $%.2lf\n", place, amount, total); // Prints the results
