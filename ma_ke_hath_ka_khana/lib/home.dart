import 'package:flutter/material.dart';
import 'recipe.dart';
import 'recipe_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Recipe> _recipes = [
    Recipe(
      name: 'Chole Bhature',
      images: 'assets/images/chole_bhature.jpg',
      rating: 4.5,
      totalTime: '30 mins',
      description:
          'Ingredients\nfor bhatura:\n2 cup maida\n2 tbsp rava / semolina fine\n1 tsp sugar\n¼ tsp baking soda\n1 tsp sugar\n½ tsp salt\n2 tbsp oil\n¼ cup curd\nwater for kneading\noil for frying\nfor pressure cooking chole:\n1 cup chana / chickpea soaked overnight\n2 tea bags\n¼ tsp baking soda\n1 tsp salt\n3 cup water\nfor chhole preparation:\n2 tbsp oil\n1 bay leaf\n1 black cardamom\n2 pod cardamom\n1 inch cinnamon\n1 tsp cumin / jeera\n½ tsp kasuri methi\n1 onion finely chopped\n1 tsp ginger garlic paste\n¼ tsp turmeric\n1 tsp chilli powder\n1 tsp coriander powder\n½ tsp cumin powder\n½ tsp garam masala\n1 tsp aamchur\n¼ tsp salt\n1½ cup tomato puree\n2 tbsp coriander finely chopped\nfor tempering:\n1 tbsp ghee / clarified butter\n2 chilli slit\n¼ tsp turmeric\n¼ tsp chilli powder\n¼ tsp garam masala\nInstructions\nhow to make bhatura recipe:\nfirstly, in a large bowl take 2 cup maida, 2 tbsp rava, 1 tsp sugar, ¼ tsp baking soda, 1 tsp sugar, ½ tsp salt and 2 tbsp oil. mix well.\nnow add ¼ cup curd and mix well making sure everything is well combined.\nfurther, add water as required and knead the dough.\nknead to the smooth and soft dough without putting much pressure.\ngrease the dough with oil, cover and rest for 2 hours\nafter 2 hours, knead the dough slightly.\npinch a ball sized dough and make a ball without andy cracks.\nroll slightly thick, applying oil to prevent from sticking.\ndrop the rolled dough into the hot oil.\npress until the bhature puffs up and splash oil to puff up fully.\nflip over and fry until it turns golden brown.\nfinally, drain off the bhatura and is ready to enjoy with chole masala.\nhow to make chole recipe for batura:\nfirstly, in a pressure cooker take soaked chana. i have soaked 1 cup chana in enough water for 8 hours.\nadd 2 tea bags, ¼ tsp baking soda, 1 tsp salt and 3 cup water.\ncover and pressure cook for 5 whistles. if you do not have tea bags, then you can prepare tea decoction and add to cooker.\nonce the pressure releases, open the cooker and discard the tea bags. keep aside.\nin a large kadai, heat 2 tbsp oil, 1 bay leaf, 1 black cardamom, 2 pod cardamom, 1 inch cinnamon, 1 tsp cumin, ½ tsp kasuri methi. saute on low flame until the spices turn aroamtic.\nnow add 1 onion, 1 tsp ginger garlic paste and saute until onions turn golden brown.\nadd ¼ tsp turmeric, 1 tsp chilli powder, 1 tsp coriander powder, ½ tsp cumin powder, ½ tsp garam masala, 1 tsp aamchur and ¼ tsp salt.\nsaute on low flame until the spices turn aromatic.\nfurther add 1½ cup tomato puree and saute until the oil separates. to prepare tomato puree, i have blended 2½ ripened tomatoes in blender without adding water.\nnow add boiled chole and mix well. adjust consistency by adding water if required.\ncover and simmer for 10 minutes, or until chole absorbs all the flavour.\nto prepare the tempering, heat 1 tbsp ghee in a pan.\nadd 2 chilli, ¼ tsp turmeri, ¼ tsp chilli powder and ¼ tsp garam masala.\nsaute on low flame without burning the spices.\npour the tempering over the chole masala, add 2 tbsp coriander and mix well.\nfinally, chole bhature is ready to enjoy with some onions.',
    ),
    // Repeat for other recipes
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text('Food Recipe'),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: _recipes.length,
        itemBuilder: (context, index) {
          return RecipeCard(
            title: _recipes[index].name,
            cookTime: _recipes[index].totalTime,
            rating: _recipes[index].rating.toString(),
            thumbnailUrl: _recipes[index].images,
            description: _recipes[index].description,
          );
        },
      ),
    );
  }
}
