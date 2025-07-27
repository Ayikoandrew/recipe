class Recipe {
  final String id;
  final String name;
  final String description;
  final List<String> ingredients;
  final List<String> instructions;
  final String imageUrl;
  final int cookTime;
  final int ratings;
  final List<String> tags;

  Recipe({
    required this.id,
    required this.name,
    required this.description,
    required this.ingredients,
    required this.instructions,
    required this.imageUrl,
    required this.cookTime,
    this.ratings = 0,
    required this.tags,
  });
}

final List<Recipe> recipes = [
  Recipe(
    id: '1',
    name: 'Spaghetti Carbonara',
    description:
        'A classic Italian pasta dish made with eggs, cheese, pancetta, and pepper.',
    ingredients: [
      'Spaghetti',
      'Eggs',
      'Parmesan cheese',
      'Pancetta',
      'Black pepper',
    ],
    instructions: [
      'Cook spaghetti.',
      'In a bowl, mix eggs and cheese.',
      'Fry pancetta.',
      'Combine all with pepper.',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/943785646/photo/spaghetti-carbonara-with-garlic-bread.webp?a=1&b=1&s=612x612&w=0&k=20&c=A48lw7nAML-umMfqKbMfVe3irvcAaOkBPUpKVOFhP48=',
    cookTime: 20,
    ratings: 4,
    tags: ['Italian', 'Pasta', 'Quick'],
  ),
  Recipe(
    id: '2',
    name: 'Chicken Curry',
    description: 'A spicy and flavorful chicken curry with a rich sauce.',
    ingredients: [
      'Chicken',
      'Onions',
      'Tomatoes',
      'Curry powder',
      'Coconut milk',
    ],
    instructions: [
      'Sauté onions',
      'Add chicken and spices',
      'Simmer with tomatoes and coconut milk',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/1514250309/photo/indian-curry-chicken-served-in-white-bowl.webp?a=1&b=1&s=612x612&w=0&k=20&c=yL2pi8dH3c806HZtJp72iMFJZnM83qdHR8c_kbuYgFc=',
    cookTime: 40,
    ratings: 5,
    tags: ['Indian', 'Spicy', 'Main Course'],
  ),
  Recipe(
    id: '3',
    name: 'Caesar Salad',
    description:
        'A fresh salad with romaine lettuce, croutons, and Caesar dressing.',
    ingredients: [
      'Romaine lettuce',
      'Croutons',
      'Caesar dressing',
      'Parmesan cheese',
    ],
    instructions: ['Toss lettuce with dressing', 'Add croutons and cheese'],
    imageUrl:
        'https://media.istockphoto.com/id/186841877/photo/caesar-salad.webp?a=1&b=1&s=612x612&w=0&k=20&c=VnF-x70YaLYgE6NHiJynM1aNeStWJfX9KPAhtul1PrI=',
    cookTime: 10,
    ratings: 3,
    tags: ['Salad', 'Quick', 'Vegetarian'],
  ),
  Recipe(
    id: '4',
    name: 'Beef Tacos',
    description: 'Tasty beef tacos with fresh toppings and a zesty sauce.',
    ingredients: [
      'Ground beef',
      'Taco shells',
      'Lettuce',
      'Tomatoes',
      'Cheese',
      'Salsa',
    ],
    instructions: ['Cook beef', 'Fill taco shells with beef and toppings'],
    imageUrl:
        'https://media.istockphoto.com/id/1333647378/photo/homemade-american-soft-shell-beef-tacos.webp?a=1&b=1&s=612x612&w=0&k=20&c=VlHsqxCFAxTsBujWRbEk30gRpEr8q5CGQVxar3OUb78=',
    cookTime: 30,
    ratings: 4,
    tags: ['Mexican', 'Tacos', 'Quick'],
  ),
  Recipe(
    id: '5',
    name: 'Vegetable Stir Fry',
    description:
        'A colorful stir fry with a variety of vegetables in a savory sauce.',
    ingredients: [
      'Mixed vegetables',
      'Soy sauce',
      'Garlic',
      'Ginger',
      'Sesame oil',
    ],
    instructions: [
      'Stir fry vegetables with garlic and ginger',
      'Add soy sauce and sesame oil',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/600073988/photo/vegetable-stir-fry.webp?a=1&b=1&s=612x612&w=0&k=20&c=xenuWRkahvIbJIzGHUwh-TAl4Rx8Q5-bAcBO08SxkoQ=',
    cookTime: 15,
    ratings: 4,
    tags: ['Vegetarian', 'Quick', 'Stir Fry'],
  ),
  Recipe(
    id: '6',
    name: 'Chocolate Cake',
    description: 'A rich and moist chocolate cake topped with creamy frosting.',
    ingredients: [
      'Flour',
      'Cocoa powder',
      'Sugar',
      'Eggs',
      'Butter',
      'Milk',
      'Chocolate frosting',
    ],
    instructions: [
      'Mix dry ingredients',
      'Add wet ingredients',
      'Bake',
      'Frost with chocolate frosting',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/2165404401/photo/chocolate-cake-with-chocolate-icing-on-a-black-plate-next-to-a-fork.webp?a=1&b=1&s=612x612&w=0&k=20&c=sOdjnbl1xh_OmqEGPmTBOpUGl3JTsSiwO5svMk_Fm18=',
    cookTime: 60,
    ratings: 5,
    tags: ['Dessert', 'Cake', 'Chocolate'],
  ),
  Recipe(
    id: '7',
    name: 'Greek Salad',
    description:
        'A refreshing salad with cucumbers, tomatoes, olives, and feta cheese.',
    ingredients: [
      'Cucumbers',
      'Tomatoes',
      'Olives',
      'Feta cheese',
      'Olive oil',
      'Lemon juice',
    ],
    instructions: [
      'Chop vegetables',
      'Mix with olives and feta',
      'Drizzle with olive oil and lemon juice',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/1670305570/photo/greek-salad.webp?a=1&b=1&s=612x612&w=0&k=20&c=Y5yLxB_I2VjJm3ysdfQNo9BiTX3zFcOyG-tPSPivkPs=',
    cookTime: 10,
    ratings: 4,
    tags: ['Salad', 'Mediterranean', 'Vegetarian'],
  ),
  Recipe(
    id: '8',
    name: 'Shrimp Fried Rice',
    description: 'A quick and easy fried rice dish with shrimp and vegetables.',
    ingredients: ['Shrimp', 'Rice', 'Eggs', 'Peas', 'Carrots', 'Soy sauce'],
    instructions: [
      'Cook rice',
      'Stir fry shrimp and vegetables',
      'Add rice and soy sauce',
      'Mix well',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/186826982/photo/plate-of-shrimp-fried-rice-on-a-placemat-and-wood-table.webp?a=1&b=1&s=612x612&w=0&k=20&c=TUt0HdGbmLGxrRZ7toW4nqlWvKiwLOuZki5GhARV864=',
    cookTime: 20,
    ratings: 4,
    tags: ['Seafood', 'Rice', 'Quick'],
  ),
  Recipe(
    id: '9',
    name: 'Pancakes',
    description: 'Fluffy pancakes served with maple syrup and fresh berries.',
    ingredients: [
      'Flour',
      'Milk',
      'Eggs',
      'Sugar',
      'Baking powder',
      'Maple syrup',
      'Berries',
    ],
    instructions: [
      'Mix ingredients',
      'Cook on a griddle',
      'Serve with syrup and berries',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/2169825145/photo/pancakes.webp?a=1&b=1&s=612x612&w=0&k=20&c=rAwKCfGy0zCvk5rKWgPAf6uXEKDYs1NQASs6BayY-RY=',
    cookTime: 15,
    ratings: 5,
    tags: ['Breakfast', 'Quick', 'Sweet'],
  ),
  Recipe(
    id: '10',
    name: 'Lentil Soup',
    description: 'A hearty soup made with lentils, vegetables, and spices.',
    ingredients: [
      'Lentils',
      'Carrots',
      'Celery',
      'Onions',
      'Garlic',
      'Vegetable broth',
      'Spices',
    ],
    instructions: [
      'Sauté vegetables',
      'Add lentils and broth',
      'Simmer until lentils are tender',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/856009070/photo/lentil-soup.webp?a=1&b=1&s=612x612&w=0&k=20&c=4cA1qC1ZmWEw5iMnFZvbpgoR1wgdbHGlZKgH0eYy3SI=',
    cookTime: 40,
    ratings: 4,
    tags: ['Soup', 'Vegetarian', 'Healthy'],
  ),
  Recipe(
    id: '11',
    name: 'BBQ Ribs',
    description: 'Tender and juicy ribs coated in a smoky BBQ sauce.',
    ingredients: ['Pork ribs', 'BBQ sauce', 'Spices'],
    instructions: [
      'Season ribs with spices',
      'Cook slowly in the oven or grill',
      'Brush with BBQ sauce before serving',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/155431877/photo/barbecue-ribs.webp?a=1&b=1&s=612x612&w=0&k=20&c=5pTU-OVBaJ-HqHUEEtNyEBKwjw8pS0uXzorP5HQoRyc=',
    cookTime: 180,
    ratings: 5,
    tags: ['Meat', 'BBQ', 'Grill'],
  ),
  Recipe(
    id: '12',
    name: 'Caprese Salad',
    description:
        'A simple salad with fresh mozzarella, tomatoes, basil, and balsamic glaze.',
    ingredients: [
      'Fresh mozzarella',
      'Tomatoes',
      'Basil',
      'Balsamic glaze',
      'Olive oil',
    ],
    instructions: [
      'Slice mozzarella and tomatoes',
      'Layer with basil',
      'Drizzle with balsamic glaze and olive oil',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/1345888788/photo/caprese-salad.webp?a=1&b=1&s=612x612&w=0&k=20&c=alTtTjaIdc0tX2cwO8wJtZNB5R9F_PixCflwKFUyidM=',
    cookTime: 15,
    ratings: 4,
    tags: ['Salad', 'Italian', 'Vegetarian'],
  ),
  Recipe(
    id: '13',
    name: 'Fish Tacos',
    description: 'Light and flavorful fish tacos with a zesty lime crema.',
    ingredients: ['White fish', 'Taco shells', 'Cabbage', 'Lime', 'Crema'],
    instructions: [
      'Cook fish',
      'Prepare lime crema',
      'Assemble tacos with fish, cabbage, and crema',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/171147729/photo/fish-tacos.webp?a=1&b=1&s=612x612&w=0&k=20&c=gjXZ1b4_qk2gci6e540nzdDa1VR1alKuLhuCqFTMpto=',
    cookTime: 25,
    ratings: 4,
    tags: ['Mexican', 'Seafood', 'Tacos'],
  ),
  Recipe(
    id: '14',
    name: 'Apple Pie',
    description:
        'A classic dessert with a flaky crust and sweet apple filling.',
    ingredients: ['Apples', 'Sugar', 'Cinnamon', 'Pie crust', 'Butter'],
    instructions: [
      'Prepare pie crust',
      'Mix apples with sugar and cinnamon',
      'Fill crust with apple mixture',
      'Bake until golden brown',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/2177484744/photo/preparing-apple-pie-in-domestic-kitchen.webp?a=1&b=1&s=612x612&w=0&k=20&c=Lub9iybcE5HMxC52hjho-Jo7PVgOav8dJ-lNK92vu4U=',
    cookTime: 60,
    ratings: 5,
    tags: ['Dessert', 'Pie', 'Sweet'],
  ),
  Recipe(
    id: '15',
    name: 'Mushroom Risotto',
    description: 'A creamy risotto with sautéed mushrooms and Parmesan cheese.',
    ingredients: [
      'Arborio rice',
      'Mushrooms',
      'Onions',
      'Garlic',
      'Vegetable broth',
      'Parmesan cheese',
    ],
    instructions: [
      'Sauté onions and garlic',
      'Add mushrooms and rice',
      'Gradually add broth while stirring',
      'Finish with Parmesan cheese',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/937898858/photo/risotto-with-chanterelle-mushrooms-and-parmesan.webp?a=1&b=1&s=612x612&w=0&k=20&c=pMznkpEps0Bo1P6cghSuT6mMQsJAxzFSTNgBkw6xhgo=',
    cookTime: 45,
    ratings: 5,
    tags: ['Italian', 'Risotto', 'Vegetarian'],
  ),
  Recipe(
    id: '16',
    name: 'Stuffed Bell Peppers',
    description:
        'Bell peppers stuffed with a savory mixture of rice, ground meat, and spices.',
    ingredients: [
      'Bell peppers',
      'Ground meat',
      'Rice',
      'Onions',
      'Tomatoes',
      'Spices',
    ],
    instructions: [
      'Cook rice and ground meat',
      'Mix with onions and tomatoes',
      'Stuff bell peppers with mixture',
      'Bake until peppers are tender',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/1702722381/photo/asian-style-beef-and-rice-skillet.webp?a=1&b=1&s=612x612&w=0&k=20&c=hY3-oH1fSB3VdoVPxxmdm23eXdQygV9-CQ5cDmR-NnQ=',
    cookTime: 50,
    ratings: 4,
    tags: ['Main Course', 'Vegetables', 'Baked'],
  ),
  Recipe(
    id: '17',
    name: 'Pesto Pasta',
    description:
        'Pasta tossed with a fresh basil pesto sauce and topped with Parmesan cheese.',
    ingredients: [
      'Pasta',
      'Basil',
      'Garlic',
      'Pine nuts  ',
      'Olive oil',
      'Parmesan cheese',
    ],
    instructions: [
      'Cook pasta',
      'Blend basil, garlic, pine nuts, and olive oil to make pesto',
      'Toss pasta with pesto and top with Parmesan cheese',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/613136676/photo/linguine-with-grilled-chicken-and-basil-pesto-sauce.webp?a=1&b=1&s=612x612&w=0&k=20&c=isvuvPv8engKgVaefHGg_W9wZ7lD7VEN1tZHpgwGrrE=',
    cookTime: 20,
    ratings: 5,
    tags: ['Italian', 'Pasta', 'Vegetarian'],
  ),
  Recipe(
    id: '18',
    name: 'Chili Con Carne',
    description: 'A hearty chili made with ground beef, beans, and spices.',
    ingredients: [
      'Ground beef',
      'Beans',
      'Tomatoes',
      'Onions',
      'Chili powder',
      'Cumin',
    ],
    instructions: [
      'Brown ground beef',
      'Add onions and spices',
      'Stir in tomatoes and beans',
      'Simmer until thickened',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/2050484971/photo/chili-con-carne.webp?a=1&b=1&s=612x612&w=0&k=20&c=avWKphnosKMZXfLZ6aD9s4OiLsM2cnDPPSa8KhumOU8=',
    cookTime: 60,
    ratings: 4,
    tags: ['Mexican', 'Spicy', 'Main Course'],
  ),
  Recipe(
    id: '19',
    name: 'Quiche Lorraine',
    description:
        'A savory quiche with bacon, cheese, and a creamy custard filling.',
    ingredients: ['Pie crust', 'Bacon', 'Eggs', 'Cream', 'Cheese', 'Onions'],
    instructions: [
      'Cook bacon and onions',
      'Whisk eggs and cream',
      'Combine with bacon and cheese',
      'Pour into pie crust and bake',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/2060294015/photo/traditional-french-pie-quiche-lorraine-on-kitchen-table.webp?a=1&b=1&s=612x612&w=0&k=20&c=8Hel9aV37t0wcNMyxegQivLSg51feRdZYNRGptOeqyc=',
    cookTime: 45,
    ratings: 5,
    tags: ['French', 'Quiche', 'Savory'],
  ),
  Recipe(
    id: '20',
    name: 'Banana Bread',
    description: 'A moist and flavorful banana bread with a hint of cinnamon.',
    ingredients: [
      'Bananas',
      'Flour',
      'Sugar',
      'Eggs',
      'Baking soda',
      'Cinnamon',
      'Butter',
    ],
    instructions: [
      'Mash bananas',
      'Mix with sugar, eggs, and melted butter',
      'Combine with flour, baking soda, and cinnamon',
      'Pour into a loaf pan and bake',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/503119248/photo/banana-loaf.webp?a=1&b=1&s=612x612&w=0&k=20&c=fc6uWgpt0si-FqogK94QzwUfAyDxYYzL15f130Oi1QM=',
    cookTime: 60,
    ratings: 5,
    tags: ['Dessert', 'Baking', 'Sweet'],
  ),
  Recipe(
    id: '21',
    name: 'Falafel Wrap',
    description:
        'Crispy falafel balls wrapped in pita bread with fresh vegetables and tahini sauce.',
    ingredients: [
      'Chickpeas',
      'Garlic',
      'Parsley',
      'Cumin',
      'Pita bread',
      'Lettuce',
      'Tomatoes',
      'Tahini sauce',
    ],
    instructions: [
      'Blend chickpeas, garlic, parsley, and cumin to make falafel mixture',
      'Form into balls and fry until golden',
      'Serve in pita bread with lettuce, tomatoes, and tahini sauce',
    ],
    imageUrl:
        'https://images.unsplash.com/photo-1649138783888-0ec9c3ec2f21?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8RmFsYWZlbCUyMFdyYXB8ZW58MHx8MHx8fDA%3D',
    cookTime: 30,
    ratings: 4,
    tags: ['Middle Eastern', 'Vegetarian', 'Wrap'],
  ),
  Recipe(
    id: '22',
    name: 'Baked Ziti',
    description:
        'A comforting baked pasta dish with marinara sauce, ricotta, and mozzarella cheese.',
    ingredients: [
      'Ziti pasta',
      'Marinara sauce',
      'Ricotta cheese',
      'Mozzarella cheese',
      'Parmesan cheese',
      'Italian seasoning',
    ],
    instructions: [
      'Cook ziti pasta',
      'Mix with marinara sauce and ricotta cheese',
      'Layer in a baking dish with mozzarella and Parmesan cheese',
      'Bake until bubbly and golden',
    ],
    imageUrl:
        'https://images.unsplash.com/photo-1743324653833-98321dc52f58?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8QmFrZWQlMjBaaXRpfGVufDB8fDB8fHww',
    cookTime: 45,
    ratings: 5,
    tags: ['Italian', 'Pasta', 'Baked'],
  ),
  Recipe(
    id: '23',
    name: 'Chicken Fajitas',
    description:
        'Sizzling chicken fajitas with bell peppers and onions, served with warm tortillas.',
    ingredients: [
      'Chicken breast',
      'Bell peppers',
      'Onions',
      'Fajita seasoning',
      'Tortillas',
    ],
    instructions: [
      'Slice chicken, bell peppers, and onions',
      'Sauté with fajita seasoning until cooked',
      'Serve with warm tortillas',
    ],
    imageUrl:
        'https://plus.unsplash.com/premium_photo-1679986537856-f13d1b30204c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Q2hpY2tlbiUyMEZhaml0YXN8ZW58MHx8MHx8fDA%3D',
    cookTime: 30,
    ratings: 4,
    tags: ['Mexican', 'Chicken', 'Quick'],
  ),
  Recipe(
    id: '24',
    name: 'Vegetable Curry',
    description:
        'A fragrant vegetable curry with a mix of seasonal vegetables and coconut milk.',
    ingredients: [
      'Mixed vegetables',
      'Coconut milk',
      'Curry powder',
      'Onions',
      'Garlic',
      'Ginger',
    ],
    instructions: [
      'Sauté onions, garlic, and ginger',
      'Add mixed vegetables and curry powder',
      'Pour in coconut milk and simmer',
    ],
    imageUrl:
        'https://images.unsplash.com/photo-1596797038530-2c107229654b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8VmVnZXRhYmxlJTIwQ3Vycnl8ZW58MHx8MHx8fDA%3D',
    cookTime: 40,
    ratings: 4,
    tags: ['Indian', 'Vegetarian', 'Curry'],
  ),

  Recipe(
    id: '25',
    name: 'Chocolate Chip Cookies',
    description: 'Classic chocolate chip cookies that are soft and chewy.',
    ingredients: [
      'Flour',
      'Sugar',
      'Brown sugar',
      'Butter',
      'Eggs',
      'Chocolate chips',
      'Vanilla extract',
    ],
    instructions: [
      'Cream butter and sugars',
      'Add eggs and vanilla',
      'Mix in flour and chocolate chips',
      'Scoop onto baking sheet and bake',
    ],
    imageUrl:
        'https://plus.unsplash.com/premium_photo-1673967816735-fcbeec26553a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Q2hvY29sYXRlJTIwQ2hpcCUyMENvb2tpZXN8ZW58MHx8MHx8fDA%3D',
    cookTime: 20,
    ratings: 5,
    tags: ['Dessert', 'Baking', 'Cookies'],
  ),

  Recipe(
    id: '26',
    name: 'Greek Yogurt Parfait',
    description:
        'A healthy breakfast parfait with Greek yogurt, granola, and fresh fruit.',
    ingredients: [
      'Greek yogurt',
      'Granola',
      'Fresh fruit (berries, banana)',
      'Honey',
    ],
    instructions: [
      'Layer Greek yogurt with granola and fresh fruit',
      'Drizzle with honey if desired',
    ],
    imageUrl:
        'https://images.unsplash.com/photo-1571230389215-b34a89739ef1?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8R3JlZWslMjBZb2d1cnQlMjBQYXJmYWl0fGVufDB8fDB8fHww',
    cookTime: 10,
    ratings: 5,
    tags: ['Breakfast', 'Healthy', 'Quick'],
  ),

  Recipe(
    id: '27',
    name: 'Roasted Vegetable Quinoa Bowl',
    description:
        'A nutritious quinoa bowl topped with roasted vegetables and a lemon vinaigrette.',
    ingredients: [
      'Quinoa',
      'Mixed vegetables (zucchini, bell peppers, carrots)',
      'Olive oil',
      'Lemon juice',
      'Salt',
      'Pepper',
    ],
    instructions: [
      'Cook quinoa according to package instructions',
      'Roast mixed vegetables with olive oil, salt, and pepper',
      'Combine quinoa and roasted vegetables, drizzle with lemon juice',
    ],
    imageUrl:
        'https://images.unsplash.com/photo-1682944625832-fd710e15b190?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fFJvYXN0ZWQlMjBWZWdldGFibGUlMjBRdWlub2ElMjBCb3dsfGVufDB8fDB8fHww',
    cookTime: 30,
    ratings: 4,
    tags: ['Healthy', 'Vegetarian', 'Bowl'],
  ),

  Recipe(
    id: '28',
    name: 'Pesto Chicken Salad',
    description:
        'A refreshing chicken salad with pesto, cherry tomatoes, and arugula.',
    ingredients: [
      'Cooked chicken breast',
      'Pesto sauce',
      'Cherry tomatoes',
      'Arugula',
      'Parmesan cheese',
    ],
    instructions: [
      'Shred cooked chicken breast',
      'Mix with pesto sauce',
      'Toss with cherry tomatoes and arugula',
      'Top with Parmesan cheese',
    ],
    imageUrl:
        'https://images.unsplash.com/photo-1752028935881-0674807b046c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fFBlc3RvJTIwQ2hpY2tlbiUyMFNhbGFkfGVufDB8fDB8fHww',
    cookTime: 15,
    ratings: 4,
    tags: ['Salad', 'Chicken', 'Quick'],
  ),

  Recipe(
    id: '29',
    name: 'Spinach and Feta Stuffed Chicken Breast',
    description:
        'Juicy chicken breasts stuffed with spinach and feta cheese, baked to perfection.',
    ingredients: [
      'Chicken breasts',
      'Spinach',
      'Feta cheese',
      'Garlic',
      'Olive oil',
      'Salt',
      'Pepper',
    ],
    instructions: [
      'Sauté spinach with garlic in olive oil',
      'Stuff chicken breasts with spinach and feta mixture',
      'Season with salt and pepper, then bake until cooked through',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/118313946/photo/chicken-breasts-stuffed-with-spinach-and-feta.webp?a=1&b=1&s=612x612&w=0&k=20&c=LGIS4gJOxvTFtanLCtyn302uDgOIlK3SPhWXwWK41GY=',
    cookTime: 40,
    ratings: 5,
    tags: ['Chicken', 'Stuffed', 'Healthy'],
  ),

  Recipe(
    id: '30',
    name: 'Mango Salsa',
    description:
        'A fresh and zesty mango salsa perfect for topping grilled fish or chicken.',
    ingredients: [
      'Mango',
      'Red onion',
      'Cilantro',
      'Lime juice',
      'Jalapeño',
      'Salt',
    ],
    instructions: [
      'Dice mango, red onion, and jalapeño',
      'Chop cilantro',
      'Mix all ingredients with lime juice and salt',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/2148548735/photo/freshly-made-mango-salsa-in-a-black-ceramic-bowl-and-nacho-chips.webp?a=1&b=1&s=612x612&w=0&k=20&c=_ER0hNoPIIvnGT8Jij4BrygIbjHSshma4xU2C6LAh3k=',
    cookTime: 10,
    ratings: 4,
    tags: ['Salsa', 'Fresh', 'Condiment'],
  ),

  Recipe(
    id: '31',
    name: 'Avocado Toast',
    description:
        'Creamy avocado spread on toasted bread, topped with cherry tomatoes and a sprinkle of salt.',
    ingredients: [
      'Bread (sourdough or whole grain)',
      'Avocado',
      'Cherry tomatoes',
      'Salt',
      'Pepper',
      'Olive oil (optional)',
    ],
    instructions: [
      'Toast the bread',
      'Mash avocado and spread on toast',
      'Top with sliced cherry tomatoes, salt, and pepper',
      'Drizzle with olive oil if desired',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/1329818840/photo/avocado-toast-with-a-fried-egg-and-toasted-sesame-seeds.webp?a=1&b=1&s=612x612&w=0&k=20&c=tn_TgDmu4lrUWerPoQ_q11aNeBt_LYQY0maPFZOwOvo=',
    cookTime: 10,
    ratings: 5,
    tags: ['Breakfast', 'Healthy', 'Quick'],
  ),

  Recipe(
    id: '32',
    name: 'Beef Stroganoff',
    description:
        'Tender strips of beef cooked in a creamy mushroom sauce, served over egg noodles.',
    ingredients: [
      'Beef sirloin',
      'Mushrooms',
      'Onions',
      'Garlic',
      'Sour cream',
      'Egg noodles',
      'Beef broth',
      'Flour',
    ],
    instructions: [
      'Cook egg noodles according to package instructions',
      'Sauté onions and garlic, add mushrooms and beef strips',
      'Stir in flour, then add beef broth and simmer',
      'Finish with sour cream and serve over noodles',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/1328568894/photo/pork-tenderloin-medallions-in-a-creamy-mushroom-sauce.webp?a=1&b=1&s=612x612&w=0&k=20&c=U3vdAD05wUhBMJrrSoJE0SZbpEa87rqJomUhaMZQGfQ=',
    cookTime: 45,
    ratings: 5,
    tags: ['Main Course', 'Comfort Food', 'Beef'],
  ),

  Recipe(
    id: '33',
    name: 'Caprese Skewers',
    description:
        'Fresh mozzarella, cherry tomatoes, and basil drizzled with balsamic glaze on skewers.',
    ingredients: [
      'Cherry tomatoes',
      'Fresh mozzarella balls',
      'Fresh basil leaves',
      'Balsamic glaze',
      'Salt',
      'Pepper',
    ],
    instructions: [
      'Thread cherry tomatoes, mozzarella balls, and basil onto skewers',
      'Drizzle with balsamic glaze and sprinkle with salt and pepper',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/1719694159/photo/caprese-salad-kabob.webp?a=1&b=1&s=612x612&w=0&k=20&c=a3xP3Hf_VipbZqf7fJGAIn5lbhNbBTOSMHs6VqdSNPw=',
    cookTime: 10,
    ratings: 4,
    tags: ['Appetizer', 'Italian', 'Fresh'],
  ),

  Recipe(
    id: '34',
    name: 'Chocolate Mousse',
    description:
        'A rich and airy chocolate mousse made with dark chocolate and whipped cream.',
    ingredients: [
      'Dark chocolate',
      'Eggs',
      'Sugar',
      'Heavy cream',
      'Vanilla extract',
      'Salt',
    ],
    instructions: [
      'Melt dark chocolate and let it cool slightly',
      'Whip heavy cream until soft peaks form',
      'Beat eggs with sugar until pale and fluffy',
      'Fold melted chocolate into egg mixture, then fold in whipped cream',
      'Chill before serving',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/180811737/photo/chocolate-mousse.webp?a=1&b=1&s=612x612&w=0&k=20&c=fj5KJR5Pj407xMbTCNFoS0XexS8DNDhNq8-r4HVu1SE=',
    cookTime: 30,
    ratings: 5,
    tags: ['Dessert', 'Chocolate', 'Mousse'],
  ),

  Recipe(
    id: '35',
    name: 'Roasted Chicken with Vegetables',
    description:
        'A whole roasted chicken seasoned with herbs, served with roasted seasonal vegetables.',
    ingredients: [
      'Whole chicken',
      'Carrots',
      'Potatoes',
      'Onions',
      'Garlic',
      'Olive oil',
      'Herbs (rosemary, thyme)',
      'Salt',
      'Pepper',
    ],
    instructions: [
      'Preheat oven to 375°F (190°C)',
      'Season chicken with olive oil, herbs, salt, and pepper',
      'Place chicken in a roasting pan with chopped vegetables',
      'Roast until chicken is cooked through and vegetables are tender',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/529979610/photo/grilled-chicken-thighs-with-a-side-salad.webp?a=1&b=1&s=612x612&w=0&k=20&c=_DaT6f6lwdM1kPEy59CmKSo27_qZkYfAVbtM-fH0nCI=',
    cookTime: 90,
    ratings: 5,
    tags: ['Main Course', 'Roasted', 'Comfort Food'],
  ),

  Recipe(
    id: '37',
    name: 'Lemon Garlic Shrimp Pasta',
    description:
        'A light and zesty pasta dish with shrimp, garlic, and a lemon butter sauce.',
    ingredients: [
      'Spaghetti or linguine',
      'Shrimp',
      'Garlic',
      'Lemon juice',
      'Butter',
      'Parsley',
      'Salt',
      'Pepper',
    ],
    instructions: [
      'Cook pasta according to package instructions',
      'Sauté garlic in butter, add shrimp and cook until pink',
      'Stir in lemon juice, salt, and pepper',
      'Toss with cooked pasta and garnish with parsley',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/155353180/photo/shrimp-scampi.webp?a=1&b=1&s=612x612&w=0&k=20&c=_eFpeSqKuj2O8oUhqPd6tjFQr2EP-3TsglzaNjpwcDk=',
    cookTime: 25,
    ratings: 5,
    tags: ['Seafood', 'Pasta', 'Quick'],
  ),

  Recipe(
    id: '38',
    name: 'Pumpkin Soup',
    description:
        'A creamy and comforting pumpkin soup perfect for chilly days.',
    ingredients: [
      'Pumpkin (fresh or canned)',
      'Onion',
      'Garlic',
      'Vegetable broth',
      'Cream',
      'Spices (cumin, nutmeg)',
      'Salt',
      'Pepper',
    ],
    instructions: [
      'Sauté onion and garlic until soft',
      'Add pumpkin and vegetable broth, bring to a boil',
      'Simmer until pumpkin is tender, then blend until smooth',
      'Stir in cream and spices, season with salt and pepper',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/859053324/photo/freshness-pumpkin-soup.webp?a=1&b=1&s=612x612&w=0&k=20&c=GTJWU5j7hoD2KiHwGuFzrO15c_-JoODB5Eh_Aa1JQcI=',
    cookTime: 40,
    ratings: 4,
    tags: ['Soup', 'Vegetarian', 'Comfort Food'],
  ),

  Recipe(
    id: '39',
    name: 'Baked Salmon with Asparagus',
    description:
        'A healthy and flavorful baked salmon dish served with roasted asparagus.',
    ingredients: [
      'Salmon fillets',
      'Asparagus',
      'Lemon slices',
      'Garlic',
      'Olive oil',
      'Salt',
      'Pepper',
    ],
    instructions: [
      'Preheat oven to 400°F (200°C)',
      'Place salmon and asparagus on a baking sheet',
      'Drizzle with olive oil, garlic, salt, and pepper',
      'Top salmon with lemon slices and bake until cooked through',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/171298089/photo/broiled-salmon.webp?a=1&b=1&s=612x612&w=0&k=20&c=5dHW0L7dn6mB3mUR6XjngghOnZ5UTQN445Y0KqLfn_I=',
    cookTime: 25,
    ratings: 5,
    tags: ['Seafood', 'Healthy', 'Quick'],
  ),

  Recipe(
    id: '40',
    name: 'Chocolate Chip Cookies',
    description:
        'Classic chocolate chip cookies that are soft, chewy, and loaded with chocolate chips.',
    ingredients: [
      'All-purpose flour',
      'Baking soda',
      'Salt',
      'Unsalted butter',
      'Brown sugar',
      'Granulated sugar',
      'Vanilla extract',
      'Eggs',
      'Chocolate chips',
    ],
    instructions: [
      'Preheat oven to 350°F (175°C)',
      'In a bowl, whisk together flour, baking soda, and salt',
      'In another bowl, cream together butter, brown sugar, and granulated sugar',
      'Beat in eggs and vanilla, then gradually add dry ingredients',
      'Fold in chocolate chips',
      'Drop spoonfuls onto a baking sheet and bake for 10-12 minutes',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/1709721394/photo/delicious-chocolate-chip-cookies.webp?a=1&b=1&s=612x612&w=0&k=20&c=WrWtJgTdxpks4TNnJp4PQ7JWRFFM7k00V3m6-9sNdJ8=',
    cookTime: 15,
    ratings: 5,
    tags: ['Dessert', 'Baking', 'Sweet'],
  ),

  Recipe(
    id: '41',
    name: 'Cauliflower Fried Rice',
    description:
        'A low-carb alternative to fried rice made with cauliflower, vegetables, and eggs.',
    ingredients: [
      'Cauliflower (riced)',
      'Carrots',
      'Peas',
      'Green onions',
      'Eggs',
      'Soy sauce',
      'Sesame oil',
      'Garlic',
      'Ginger',
    ],
    instructions: [
      'Sauté garlic and ginger in sesame oil',
      'Add riced cauliflower, carrots, and peas, stir-fry until tender',
      'Push vegetables to the side, scramble eggs in the pan',
      'Mix everything together, add soy sauce and green onions before serving',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/1125984488/photo/fried-cauliflower-rice-with-avocado-and-gochujang-sauce-on-the-side.webp?a=1&b=1&s=612x612&w=0&k=20&c=vf67mKAgRjAeKrZI9gFBrLSsDVPhLRLFCORNl3f8m-s=',
    cookTime: 20,
    ratings: 4,
    tags: ['Low Carb', 'Vegetarian', 'Quick'],
  ),

  Recipe(
    id: '44',
    name: 'Eggplant Parmesan',
    description:
        'Layers of breaded eggplant, marinara sauce, and melted cheese baked to perfection.',
    ingredients: [
      'Eggplant',
      'Breadcrumbs',
      'Marinara sauce',
      'Mozzarella cheese',
      'Parmesan cheese',
      'Eggs',
      'Olive oil',
      'Basil',
      'Salt',
      'Pepper',
    ],
    instructions: [
      'Slice eggplant and salt to remove moisture',
      'Dip in beaten eggs, then coat with breadcrumbs',
      'Fry until golden brown, layer in a baking dish with marinara and cheeses',
      'Bake until bubbly and golden on top',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/1166893356/photo/traditional-italian-food-baked-eggplant-tomatoes-with-sauce-parmesan-and-basil-rustic-food.webp?a=1&b=1&s=612x612&w=0&k=20&c=zDaWWCtrAL2teevagGZy6adjLBUnOyhzw5M746AzjdQ=',
    cookTime: 60,
    ratings: 5,
    tags: ['Italian', 'Vegetarian', 'Baked'],
  ),

  Recipe(
    id: '45',
    name: 'Chicken Alfredo',
    description:
        'Creamy fettuccine Alfredo with tender chicken and Parmesan cheese.',
    ingredients: [
      'Fettuccine pasta',
      'Chicken breast',
      'Heavy cream',
      'Parmesan cheese',
      'Garlic',
      'Butter',
      'Salt',
      'Pepper',
    ],
    instructions: [
      'Cook fettuccine according to package instructions',
      'In a skillet, melt butter and sauté garlic',
      'Add chicken and cook until browned',
      'Stir in heavy cream and Parmesan, simmer until thickened',
      'Toss pasta with sauce, season with salt and pepper',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/154920482/photo/chicken-fettuccine-alfredo.webp?a=1&b=1&s=612x612&w=0&k=20&c=DL16J28wlo77tz0q6HkiNeWSjkHVryi947I-AAKOWU4=',
    cookTime: 30,
    ratings: 5,
    tags: ['Pasta', 'Italian', 'Chicken'],
  ),

  Recipe(
    id: '46',
    name: 'Vegetable Soup',
    description:
        'A hearty vegetable soup loaded with seasonal vegetables and herbs.',
    ingredients: [
      'Carrots',
      'Celery',
      'Potatoes',
      'Green beans',
      'Tomatoes',
      'Vegetable broth',
      'Herbs (thyme, parsley)',
      'Salt',
      'Pepper',
    ],
    instructions: [
      'Chop all vegetables into bite-sized pieces',
      'Sauté carrots, celery, and potatoes in a pot',
      'Add green beans, tomatoes, and vegetable broth',
      'Season with herbs, salt, and pepper, simmer until vegetables are tender',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/2041236856/photo/fresh-vegetable-soup-with-chickpeas-zucchini-and-sweet-potatoes-on-wooden-background.webp?a=1&b=1&s=612x612&w=0&k=20&c=73um9vHnNwNH2f2cWbEtssnKDfea4OtLk1YCQt1g7r4=',
    cookTime: 40,
    ratings: 4,
    tags: ['Soup', 'Vegetarian', 'Healthy'],
  ),

  Recipe(
    id: '47',
    name: 'Stuffed Mushrooms',
    description:
        'Savory stuffed mushrooms filled with a mixture of cream cheese, herbs, and breadcrumbs.',
    ingredients: [
      'Large mushrooms',
      'Cream cheese',
      'Breadcrumbs',
      'Garlic',
      'Parsley',
      'Parmesan cheese',
      'Olive oil',
      'Salt',
      'Pepper',
    ],
    instructions: [
      'Preheat oven to 375°F (190°C)',
      'Remove stems from mushrooms and chop finely',
      'Mix chopped stems with cream cheese, breadcrumbs, garlic, parsley, and Parmesan',
      'Stuff mushroom caps with the mixture, drizzle with olive oil, and bake until golden',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/1057566866/photo/creamy-crab-and-shrimp-stuffed-mini-portobello-mushroom-caps.webp?a=1&b=1&s=612x612&w=0&k=20&c=y1byRLnbLd7jk4lGhpRKpiji1syPfrNSK_zJl38iOqk=',
    cookTime: 25,
    ratings: 4,
    tags: ['Appetizer', 'Vegetarian', 'Baked'],
  ),

  Recipe(
    id: '48',
    name: 'Banana Pancakes',
    description:
        'Fluffy pancakes made with ripe bananas, perfect for a weekend breakfast.',
    ingredients: [
      'Ripe bananas',
      'All-purpose flour',
      'Baking powder',
      'Sugar',
      'Milk',
      'Eggs',
      'Butter',
      'Vanilla extract',
    ],
    instructions: [
      'Mash bananas in a bowl',
      'Mix flour, baking powder, and sugar in another bowl',
      'Combine wet ingredients (milk, eggs, melted butter, vanilla) with dry ingredients',
      'Fold in mashed bananas, cook on a griddle until golden brown on both sides',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/174697307/photo/i-couldnt-see-the-picture-of-banana-pancakes.webp?a=1&b=1&s=612x612&w=0&k=20&c=KvdQkJDPlemM4vEgDcR21wimPg0TZffhNwGHNLZqDyo=',
    cookTime: 20,
    ratings: 5,
    tags: ['Breakfast', 'Sweet', 'Quick'],
  ),

  Recipe(
    id: '50',
    name: 'Chocolate Brownies',
    description:
        'Rich and fudgy chocolate brownies that are easy to make and delicious.',
    ingredients: [
      'Unsweetened cocoa powder',
      'All-purpose flour',
      'Sugar',
      'Butter',
      'Eggs',
      'Vanilla extract',
      'Salt',
    ],
    instructions: [
      'Preheat oven to 350°F (175°C)',
      'Melt butter and mix with sugar, eggs, and vanilla',
      'Stir in cocoa powder, flour, and salt until combined',
      'Pour into a baking dish and bake for 20-25 minutes',
    ],
    imageUrl:
        'https://media.istockphoto.com/id/2156395989/photo/fresh-baked-brownies.webp?a=1&b=1&s=612x612&w=0&k=20&c=MKbg4lqBif3w2ExOb2qvaeYyQaG6IiEjikoK9ae77cM=',
    cookTime: 30,
    ratings: 5,
    tags: ['Dessert', 'Baking', 'Chocolate'],
  ),
];
