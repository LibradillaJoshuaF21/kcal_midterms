import 'package:kcal_midterms/pages/favorite/recipe/ingredients.dart';
import 'package:kcal_midterms/pages/favorite/recipe/recipe.dart';

class RecipeUtils {
  static List<Recipe> getRecipeData() {
    return [
      Recipe(
        imgPath: 'assets/pictures/recipe/recipe1.PNG',
        recipeName: 'Chicken Cordon Bleu',
        timeCook: 45,
        servings: 4,
        shortDesc:
            'There’s nothing we love more than a crispy, succulent, perfectly-fried piece of fried chicken.',
        recipeDesc:
            'The French term cordon bleu is translated as "blue ribbon". According to Larousse Gastronomique cordon bleu "was originally a wide blue ribbon worn by members of the highest order of knighthood, LOrdre des chevaliers du Saint-Esprit, instituted by Henri III of France in 1578.',
        listIngredients: [
          Ingredients(
            ingredientName: 'Boneless Chicken Breast',
            amount: 4,
            measurement: 'cuts',
            imgPath: 'assets/pictures/ingredients/chicken_breast.png',
          ),
          Ingredients(
            ingredientName: 'Salt',
            amount: 1,
            measurement: 'tsp',
            imgPath: 'assets/pictures/ingredients/salt.png',
          ),
          Ingredients(
            ingredientName: 'Ground Black Pepper',
            amount: 1,
            measurement: 'tsp',
            imgPath: 'assets/pictures/ingredients/black_pepper.png',
          ),
          Ingredients(
            ingredientName: 'Cheese',
            amount: 6,
            measurement: 'slices',
            imgPath: 'assets/pictures/ingredients/cheese.png',
          ),
          Ingredients(
            ingredientName: 'Ham',
            amount: 4,
            measurement: 'slices',
            imgPath: 'assets/pictures/ingredients/ham.png',
          ),
          Ingredients(
            ingredientName: 'Bread Crumbs',
            amount: 1,
            measurement: 'cup',
            imgPath: 'assets/pictures/ingredients/bread_crumbs.png',
          ),
        ],
        directions: [
          'Preheat oven to 350 degrees F (175 degrees C). Coat a 7x11 inch baking dish with nonstick cooking spray.',
          'Pound chicken breasts to 1/4 inch thickness.',
          'Sprinkle each piece of chicken on both sides with salt and pepper. Place 1 cheese slice and 1 ham slice on top of each breast. Roll up each breast, and secure with a toothpick. Place in baking dish, and sprinkle chicken evenly with bread crumbs.',
          'Bake for 30 to 35 minutes, or until chicken is no longer pink. Remove from oven, and place 1/2 cheese slice on top of each breast. Return to oven for 3 to 5 minutes, or until cheese has melted. Remove toothpicks, and serve immediately.',
        ],
      ),
      Recipe(
        imgPath: 'assets/pictures/recipe/recipe2.PNG',
        recipeName: 'Pork Chops in Red Sauce',
        timeCook: 70,
        servings: 4,
        shortDesc:
            'These chops are so tender you cut them with your fork. Whenever I serve them I get ask for the recipe.',
        recipeDesc:
            'On a weekday the time is short and the ideas for dinner are few, thinking about it and not only we prepare this recipe of pork chops in tomato sauce! It’s a simple recipe and at the same time quite tasty! Bon appetit.',
        listIngredients: [
          Ingredients(
            ingredientName: 'Pork Chop',
            amount: 4,
            measurement: 'cuts',
            imgPath: 'assets/pictures/ingredients/pork_chop.png',
          ),
          Ingredients(
            ingredientName: 'Onion',
            amount: 1,
            measurement: 'sliced',
            imgPath: 'assets/pictures/ingredients/onion.png',
          ),
          Ingredients(
            ingredientName: 'Beef',
            amount: 1,
            measurement: 'cut',
            imgPath: 'assets/pictures/ingredients/beef.png',
          ),
          Ingredients(
            ingredientName: 'Water',
            amount: 1,
            measurement: 'cup',
            imgPath: 'assets/pictures/ingredients/water.png',
          ),
          Ingredients(
            ingredientName: 'Salt',
            amount: 1,
            measurement: 'tsp',
            imgPath: 'assets/pictures/ingredients/salt.png',
          ),
          Ingredients(
            ingredientName: 'Tomato',
            amount: 1,
            measurement: 'sliced',
            imgPath: 'assets/pictures/ingredients/tomato.png',
          ),
        ],
        directions: [
          'Preheat oven to 375 degrees F (190 degrees C).',
          'Heat a large lightly oiled skillet over medium-high heat. Brown pork chops on both sides.',
          'Place pork chops in a casserole dish and cover with sliced onions. Dissolve bouillon cube in hot water and mix with tomato soup. Pour soup mixture over pork chops.',
          'Cover casserole and bake in preheated oven for 1 hour.',
        ],
      ),
      Recipe(
        imgPath: 'assets/pictures/recipe/recipe3.jpg',
        recipeName: 'Tuna Casserole',
        timeCook: 45,
        servings: 8,
        shortDesc:
            'Tuna, macaroni, creamy soup, cheese and fried onions are all you need to make this super easy tuna casserole that I learned from my roommate.',
        recipeDesc:
            'Tuna casserole is a casserole primarily made with pasta and canned tuna, with canned peas and corn sometimes added. The dish is often topped with potato chips, corn flakes, bread crumbs or canned fried onions',
        listIngredients: [
          Ingredients(
            ingredientName: 'Macaroni',
            amount: 3,
            measurement: 'cups',
            imgPath: 'assets/pictures/ingredients/macaroni.png',
          ),
          Ingredients(
            ingredientName: 'Tuna',
            amount: 5,
            measurement: 'ounces',
            imgPath: 'assets/pictures/ingredients/tuna.png',
          ),
          Ingredients(
            ingredientName: 'Cream of Chicken Soup',
            amount: 10,
            measurement: 'ounces',
            imgPath: 'assets/pictures/ingredients/cream_soup.png',
          ),
          Ingredients(
            ingredientName: 'Cheese',
            amount: 1,
            measurement: 'cup',
            imgPath: 'assets/pictures/ingredients/cheese.png',
          ),
          Ingredients(
            ingredientName: 'Onions',
            amount: 2,
            measurement: 'sliced',
            imgPath: 'assets/pictures/ingredients/onion.png',
          ),
        ],
        directions: [
          'Preheat oven to 350 degrees F (175 degrees C).',
          'In a 9x13-inch baking dish, combine the macaroni, tuna, and soup. Mix well, and then top with cheese.',
          'Bake at 350 degrees F (175 degrees C) for about 25 minutes, or until bubbly. Sprinkle with fried onions, and bake for another 5 minutes. Serve hot.',
        ],
      ),
      Recipe(
        imgPath: 'assets/pictures/recipe/recipe4.jpg',
        recipeName: 'Kielbasa with Peppers and Potatoes',
        timeCook: 40,
        servings: 6,
        shortDesc: 'Kielbasa cooked with red and yellow peppers and potatoes.',
        recipeDesc:
            'Fried Kielbasa, Potatoes and Peppers is a super easy one pan dinner recipe made with smoked sausage, baby creamer potatoes, colorful bell peppers and onions. Simple and delicious.',
        listIngredients: [
          Ingredients(
            ingredientName: 'Vegetable Oil',
            amount: 1,
            measurement: 'tbsp',
            imgPath: 'assets/pictures/ingredients/oil.png',
          ),
          Ingredients(
            ingredientName: 'Sausage',
            amount: 16,
            measurement: 'ounces',
            imgPath: 'assets/pictures/ingredients/sausage.png',
          ),
          Ingredients(
            ingredientName: 'Tomatoes',
            amount: 6,
            measurement: 'diced',
            imgPath: 'assets/pictures/ingredients/tomato.png',
          ),
          Ingredients(
            ingredientName: 'Red Bell Pepper',
            amount: 1,
            measurement: 'sliced',
            imgPath: 'assets/pictures/ingredients/red_pepper.png',
          ),
          Ingredients(
            ingredientName: 'Yellow Bell Pepper',
            amount: 1,
            measurement: 'sliced',
            imgPath: 'assets/pictures/ingredients/yellow_pepper.png',
          ),
        ],
        directions: [
          'Heat the oil in a saucepan over medium heat. Place kielbasa and potatoes in the saucepan. Cover, and cook 25 minutes, stirring occasionally, until potatoes are tender.',
          'Mix red bell pepper and yellow bell pepper into the saucepan, and continue cooking 5 minutes, until peppers are just tender.',
        ],
      ),
      Recipe(
        imgPath: 'assets/pictures/recipe/recipe5.jpg',
        recipeName: 'Smoked Cheese Ravioli',
        timeCook: 25,
        servings: 4,
        shortDesc: 'This dinner is quick and easy but tastes gourmet!',
        recipeDesc:
            'Smoked Cheese Ravioli an elegant dish that is both luxurious and beautiful to the eye. The combination of the smoked cheese in the ravioli and the tender pasta, delivered with that caramelized brown butter infused with the spice of sage and the rustic nature of pan fried walnuts takes this Ravioli pasta dish to levels unknown. Just when you think your taste buds have had enough, in comes the white truffle oil.',
        listIngredients: [
          Ingredients(
            ingredientName: 'Cheese',
            amount: 16,
            measurement: 'ounces',
            imgPath: 'assets/pictures/ingredients/cheese.png',
          ),
          Ingredients(
            ingredientName: 'Cream',
            amount: 1,
            measurement: 'cup',
            imgPath: 'assets/pictures/ingredients/cream.png',
          ),
          Ingredients(
            ingredientName: 'Parsley',
            amount: 1,
            measurement: 'tsp',
            imgPath: 'assets/pictures/ingredients/parsley.png',
          ),
          Ingredients(
            ingredientName: 'White Pepper',
            amount: 1,
            measurement: 'tsp',
            imgPath: 'assets/pictures/ingredients/white_pepper.png',
          ),
        ],
        directions: [
          'Bring a large pot of lightly salted water to a rolling boil over high heat; stir in the frozen ravioli and return to a boil. Cook uncovered, stirring occasionally, until the ravioli float to the top and the filling is hot, 6 to 8 minutes. Drain.',
          'Meanwhile, bring the half-and-half to a simmer in a saucepan over medium heat. Whisk in the Gouda cheese until melted; season with parsley and white pepper. Pour the sauce over the cooked ravioli to serve.',
        ],
      ),
    ];
  }
}
