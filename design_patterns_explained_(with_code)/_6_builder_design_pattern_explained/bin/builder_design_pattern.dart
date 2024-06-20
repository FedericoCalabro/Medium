
import 'package:builder_design_pattern/builder.dart';
import 'package:builder_design_pattern/pizza.dart';

void main() {
  // Create a pizza using the builder
  Pizza pizza = PizzaBuilder()
      .setDough('Thin Crust')
      .setSauce('Tomato')
      .setCheese('Mozzarella')
      .addTopping('Pepperoni')
      .addTopping('Mushrooms')
      .addTopping('Onions')
      .build();

  print(pizza); 
  // Output: Pizza with Thin Crust dough, Tomato sauce, Mozzarella cheese, and toppings: [Pepperoni, Mushrooms, Onions]

  // Create another pizza using the builder
  Pizza anotherPizza = PizzaBuilder()
      .setDough('Thick Crust')
      .setSauce('BBQ')
      .setCheese('Cheddar')
      .addTopping('Chicken')
      .addTopping('Bell Peppers')
      .build();

  print(anotherPizza); 
  // Output: Pizza with Thick Crust dough, BBQ sauce, Cheddar cheese, and toppings: [Chicken, Bell Peppers]
}

