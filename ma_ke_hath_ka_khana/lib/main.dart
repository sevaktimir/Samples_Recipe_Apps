import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            recipeCard(context, 'Chole Bhature',
                'assets/images/chole_bhature.jpg', choleBhatureDescription),
            recipeCard(
                context, 'Dosa', 'assets/images/dhosa.jpg', dhosaDescription),
            recipeCard(context, 'Manchuriyan', 'assets/images/manchuriyan.jpg',
                manchuriyanDescription),
            recipeCard(context, 'Panipuri', 'assets/images/panipuri.jpg',
                panipuriDescription),
            recipeCard(context, 'Samosa', 'assets/images/samosa.jpg',
                samosaDescription),
            recipeCard(context, 'Thepla', 'assets/images/thepla.jpg',
                theplaDescription),
          ],
        ),
      ),
    );
  }

  Widget recipeCard(
      BuildContext context, String title, String imageUrl, String description) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: ListTile(
        contentPadding: EdgeInsets.all(10),
        leading: Image.asset(
          imageUrl,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RecipeDescriptionPage(
                title: title,
                description: description,
                imageUrl: imageUrl,
              ),
            ),
          );
        },
      ),
    );
  }
}

const String choleBhatureDescription = """
Ingredients
for bhatura:
2 cup maida
2 tbsp rava / semolina fine
1 tsp sugar
¼ tsp baking soda
1 tsp sugar
½ tsp salt
2 tbsp oil
¼ cup curd
water for kneading
oil for frying

for pressure cooking chole:
1 cup chana / chickpea soaked overnight
2 tea bags
¼ tsp baking soda
1 tsp salt
3 cup water

for chhole preparation:
2 tbsp oil
1 bay leaf
1 black cardamom
2 pod cardamom
1 inch cinnamon
1 tsp cumin / jeera
½ tsp kasuri methi
1 onion finely chopped
1 tsp ginger garlic paste
¼ tsp turmeric
1 tsp chilli powder
1 tsp coriander powder
½ tsp cumin powder
½ tsp garam masala
1 tsp aamchur
¼ tsp salt
1½ cup tomato puree
2 tbsp coriander finely chopped

for tempering:
1 tbsp ghee / clarified butter
2 chilli slit
¼ tsp turmeric
¼ tsp chilli powder
¼ tsp garam masala

Instructions
how to make bhatura recipe:
firstly, in a large bowl take 2 cup maida, 2 tbsp rava, 1 tsp sugar, ¼ tsp baking soda, 1 tsp sugar, ½ tsp salt and 2 tbsp oil. mix well.
now add ¼ cup curd and mix well making sure everything is well combined.
further, add water as required and knead the dough.
knead to the smooth and soft dough without putting much pressure.
grease the dough with oil, cover and rest for 2 hours
after 2 hours, knead the dough slightly.
pinch a ball sized dough and make a ball without andy cracks.
roll slightly thick, applying oil to prevent from sticking.
drop the rolled dough into the hot oil.
press until the bhature puffs up and splash oil to puff up fully.
flip over and fry until it turns golden brown.
finally, drain off the bhatura and is ready to enjoy with chole masala.

how to make chole recipe for batura:
firstly, in a pressure cooker take soaked chana. i have soaked 1 cup chana in enough water for 8 hours.
add 2 tea bags, ¼ tsp baking soda, 1 tsp salt and 3 cup water.
cover and pressure cook for 5 whistles. if you do not have tea bags, then you can prepare tea decoction and add to cooker.
once the pressure releases, open the cooker and discard the tea bags. keep aside.
in a large kadai, heat 2 tbsp oil, 1 bay leaf, 1 black cardamom, 2 pod cardamom, 1 inch cinnamon, 1 tsp cumin, ½ tsp kasuri methi. saute on low flame until the spices turn aroamtic.
now add 1 onion, 1 tsp ginger garlic paste and saute until onions turn golden brown.
add ¼ tsp turmeric, 1 tsp chilli powder, 1 tsp coriander powder, ½ tsp cumin powder, ½ tsp garam masala, 1 tsp aamchur and ¼ tsp salt.
saute on low flame until the spices turn aromatic.
further add 1½ cup tomato puree and saute until the oil separates. to prepare tomato puree, i have blended 2½ ripened tomatoes in blender without adding water.
now add boiled chole and mix well. adjust consistency by adding water if required.
cover and simmer for 10 minutes, or until chole absorbs all the flavour.
to prepare the tempering, heat 1 tbsp ghee in a pan.
add 2 chilli, ¼ tsp turmeri, ¼ tsp chilli powder and ¼ tsp garam masala.
saute on low flame without burning the spices.
pour the tempering over the chole masala, add 2 tbsp coriander and mix well.
finally, chole bhature is ready to enjoy with some onions.
""";

const String dhosaDescription = """
Dosa Batter Ingredients:
2 cups rice (preferably parboiled rice)
1/2 cup urad dal (split black gram)
1/2 teaspoon fenugreek seeds
Salt to taste
Water as needed
Oil or ghee for cooking

Potato Masala Filling Ingredients:
4 medium-sized potatoes, boiled and peeled
1 large onion, thinly sliced
2 green chilies, sliced
1 teaspoon mustard seeds
1 teaspoon urad dal (split black gram)
1 teaspoon chana dal (split Bengal gram)
10-12 curry leaves
1/2 teaspoon turmeric powder
Salt to taste
2 tablespoons oil
Fresh coriander leaves, chopped (optional)
Lemon juice to taste (optional)

Instructions:
Preparing Dosa Batter:
Soak the Ingredients:
Wash and soak the rice in water for at least 4-6 hours.
Wash and soak the urad dal and fenugreek seeds together in water for at least 4-6 hours.

Grind the Batter:
Drain the soaked urad dal and fenugreek seeds. Grind them in a wet grinder or a high-speed blender, adding water gradually to make a smooth batter.
Drain the soaked rice and grind it to a smooth batter, adding water as needed.
Combine both batters in a large mixing bowl. Mix well to ensure they are fully incorporated.

Ferment the Batter:
Cover the bowl and let the batter ferment in a warm place for 8-12 hours or overnight. The batter should rise and become slightly bubbly.
Once fermented, add salt to taste and mix well. The batter should be of pouring consistency, so add water if needed.

Making the Potato Masala Filling:
Prepare the Potatoes:
Mash the boiled potatoes roughly and set aside.

Prepare the Tempering:
Heat oil in a pan. Add mustard seeds and let them splutter.
Add urad dal and chana dal. Fry until they turn golden brown.
Add curry leaves and sliced green chilies. Sauté for a few seconds.
Add sliced onions and sauté until they become translucent.

Cook the Masala:
Add turmeric powder and salt to the onions. Mix well.
Add the mashed potatoes and mix everything thoroughly. Cook for 2-3 minutes until everything is well combined and heated through.
Garnish with chopped coriander leaves and a squeeze of lemon juice if desired. Mix well and set aside.

Making the Dosa:
Heat the Pan:
Heat a non-stick or cast-iron skillet (tawa) over medium heat. Ensure it is well-seasoned if using cast iron.

Pour the Batter:
Pour a ladleful of dosa batter in the center of the pan. Using the back of the ladle, spread the batter in a circular motion from the center outwards to form a thin crepe.

Cook the Dosa:
Drizzle a few drops of oil or ghee around the edges and on top of the dosa.
Cook until the edges start to lift and the bottom turns golden brown and crispy.
Place a portion of the potato masala filling on one side of the dosa.
Fold the dosa over the filling and remove from the pan. Serve hot.
""";

const String manchuriyanDescription = """
Vegetable Manchurian Dry
Ingredients:
For the Manchurian Balls:
1 cup cabbage, grated
1 cup carrot, grated
1/2 cup bell pepper, finely chopped
1/2 cup beans, finely chopped
1/2 cup spring onions, finely chopped
2 green chilies, finely chopped
1 tablespoon ginger-garlic paste
2 tablespoons cornflour
2 tablespoons all-purpose flour (maida)
Salt to taste
Black pepper to taste
Oil for deep frying

For the Sauce:
2 tablespoons oil
1 tablespoon ginger, finely chopped
1 tablespoon garlic, finely chopped
2 green chilies, finely chopped
1/4 cup spring onions, finely chopped
1/4 cup bell pepper, finely chopped
1/4 cup carrot, finely chopped
1/4 cup cabbage, finely chopped
2 tablespoons soy sauce
1 tablespoon vinegar
1 tablespoon tomato ketchup
1 tablespoon chili sauce
Salt to taste
Black pepper to taste
1 tablespoon cornflour mixed with 3 tablespoons water (cornstarch slurry)
Spring onions, chopped (for garnish)

Instructions:
For the Manchurian Balls:
In a mixing bowl, combine grated cabbage, grated carrot, chopped bell pepper, chopped beans, chopped spring onions, green chilies, and ginger-garlic paste. Mix well.
Add cornflour, all-purpose flour, salt, and black pepper to the vegetables. Mix until well combined and the mixture holds together. If needed, add a little more flour to bind the mixture.
Shape the mixture into small balls.
Heat oil in a deep frying pan over medium heat. Fry the vegetable balls until golden brown and crispy. Remove and drain on paper towels. Set aside.

For the Sauce:
In a wok or large frying pan, heat 2 tablespoons of oil over medium-high heat.
Add chopped ginger, garlic, and green chilies. Sauté for a few seconds until fragrant.
Add chopped spring onions, bell pepper, carrot, and cabbage. Stir-fry for 2-3 minutes until the vegetables are slightly tender but still crisp.
Add soy sauce, vinegar, tomato ketchup, and chili sauce. Mix well and cook for another minute.
Season with salt and black pepper to taste.
Add the cornstarch slurry to the sauce, stirring continuously until the sauce thickens.

Combine and Serve:
Add the fried vegetable balls to the sauce. Toss to coat the balls evenly with the sauce.
Garnish with chopped spring onions.
Serve hot as an appetizer or as a side dish with fried rice or noodles.
""";

const String panipuriDescription = """
Ingredients:
For the Puris:
1 cup semolina (rava/suji)
2 tablespoons all-purpose flour (maida)
A pinch of baking soda
Water to knead the dough
Oil for deep frying

For the Pani (Spicy Water):
1 cup fresh mint leaves
1/2 cup fresh coriander leaves
2-3 green chilies
1-inch piece of ginger
1 teaspoon roasted cumin powder
1 teaspoon chaat masala
Black salt to taste
1 tablespoon tamarind paste
4 cups cold water
Ice cubes (optional)

For the Filling:
2-3 medium-sized potatoes, boiled and mashed
1 cup cooked chickpeas or black chana
1 teaspoon roasted cumin powder
1 teaspoon chaat masala
Salt to taste
Fresh coriander leaves, chopped

Instructions:
Making the Puris:
In a mixing bowl, combine semolina, all-purpose flour, and a pinch of baking soda.
Gradually add water and knead to form a stiff dough.
Cover the dough with a damp cloth and let it rest for 15-20 minutes.
Divide the dough into small balls and roll each ball into a thin, flat disc.
Heat oil in a deep frying pan over medium heat. Fry the discs until they puff up and turn golden brown and crispy.
Remove and drain on paper towels. Let them cool completely before using.

Preparing the Pani:
In a blender, combine mint leaves, coriander leaves, green chilies, ginger, roasted cumin powder, chaat masala, black salt, and tamarind paste. Blend to a smooth paste.
Add the paste to cold water and mix well. Adjust seasoning and chill in the refrigerator.
Add ice cubes just before serving if desired.

Preparing the Filling:
In a bowl, combine mashed potatoes, cooked chickpeas, roasted cumin powder, chaat masala, salt, and chopped coriander leaves. Mix well.

Assembling the Pani Puri:
Gently make a small hole in the center of each puri.
Stuff the puris with the potato and chickpea filling.
Dip the stuffed puris into the spicy pani and enjoy immediately.
""";

const String samosaDescription = """
Ingredients:
For the Dough:
2 cups all-purpose flour (maida)
1/4 cup ghee (clarified butter) or oil
Salt to taste
Water as needed

For the Filling:
4 medium-sized potatoes, boiled and mashed
1/2 cup green peas, boiled
1 teaspoon cumin seeds
1 teaspoon mustard seeds
1 tablespoon ginger, finely chopped
2-3 green chilies, finely chopped
1/2 teaspoon turmeric powder
1 teaspoon garam masala
1 teaspoon chaat masala
Salt to taste
2 tablespoons oil
Fresh coriander leaves, chopped

For Frying:
Oil for deep frying

Instructions:
Preparing the Dough:
In a mixing bowl, combine all-purpose flour, ghee (or oil), and salt.
Gradually add water and knead to form a stiff dough.
Cover the dough with a damp cloth and let it rest for 20-30 minutes.

Preparing the Filling:
Heat 2 tablespoons of oil in a pan. Add cumin seeds and mustard seeds. Let them splutter.
Add finely chopped ginger and green chilies. Sauté for a few seconds.
Add boiled green peas, mashed potatoes, turmeric powder, garam masala, chaat masala, and salt. Mix well.
Cook for 2-3 minutes until the spices are well incorporated into the potatoes and peas.
Garnish with chopped coriander leaves. Mix well and set aside to cool.

Assembling the Samosas:
Divide the dough into small balls. Roll each ball into a thin oval or round shape.
Cut the rolled dough in half to form two semi-circles.
Take one semi-circle and fold it into a cone shape, sealing the edges with water.
Fill the cone with the prepared potato and pea filling.
Seal the open edges of the cone to form a triangle. Ensure the edges are well-sealed to prevent the filling from spilling out.
Repeat the process with the remaining dough and filling.

Frying the Samosas:
Heat oil in a deep frying pan over medium heat.
Gently slide the prepared samosas into the hot oil. Fry until they turn golden brown and crispy.
Remove and drain on paper towels.
Serve hot with chutney or sauce.
""";

const String theplaDescription = """
Ingredients:
For the Dough:
2 cups whole wheat flour (atta)
1/4 cup besan (gram flour)
1 cup fresh methi (fenugreek) leaves, finely chopped
1 teaspoon turmeric powder
1 teaspoon red chili powder
1 teaspoon coriander powder
1 teaspoon cumin powder
1 teaspoon garam masala
1 tablespoon ginger-green chili paste
Salt to taste
2 tablespoons yogurt
2 tablespoons oil
Water as needed

For Cooking:
Oil or ghee for cooking

Instructions:
Preparing the Dough:
In a mixing bowl, combine whole wheat flour, besan, chopped methi leaves, turmeric powder, red chili powder, coriander powder, cumin powder, garam masala, ginger-green chili paste, and salt.
Add yogurt and oil to the dry ingredients. Mix well.
Gradually add water and knead to form a soft, pliable dough.
Cover the dough with a damp cloth and let it rest for 15-20 minutes.

Rolling and Cooking the Theplas:
Divide the dough into small balls.
Roll each ball into a thin, flat circle using a rolling pin. Dust with flour as needed to prevent sticking.
Heat a tawa or griddle over medium heat.
Place the rolled thepla on the hot tawa. Cook for a few seconds until bubbles start to form on the surface.
Flip the thepla and apply a little oil or ghee on the cooked side.
Flip again and apply oil or ghee on the other side. Press gently with a spatula to ensure even cooking.
Cook until both sides are golden brown and crispy.
Repeat the process with the remaining dough balls.
Serve hot with yogurt, pickle, or chutney.
""";

class RecipeDescriptionPage extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  RecipeDescriptionPage({
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(imageUrl),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                description,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
