-- Add primary keys to tables Ingredient, Step, and Category
ALTER TABLE Ingredient ADD PRIMARY KEY (IngredientID);
ALTER TABLE Step ADD PRIMARY KEY (StepID);
ALTER TABLE Category ADD PRIMARY KEY (CategoryID);

-- Inserting new recipes into the Recipe table
INSERT INTO Recipe (RecipeID, Name, CategoryID)
VALUES
  (1, 'No-Bake Cheesecake', 1),
  (2, 'Roasted Brussels Sprouts', 2),
  (3, 'Mac & Cheese', 3),
  (4, 'Tamagoyaki Japanese Omelette', 4);

-- Inserting categories into the Category table
INSERT INTO Category (CategoryID, Name)
VALUES
  (1, 'Cake'),
  (2, 'Vegan'),
  (3, 'Vegetarian'),
  (4, 'Japanese'),
  (5, 'Gluten-Free');

-- Inserting ingredients into the Ingredient table
INSERT INTO Ingredient (IngredientID, Name)
VALUES
  (1, 'Condensed milk'),
  (2, 'Cream Cheese'),
  (3, 'Lemon Juice'),
  (4, 'Pie Crust'),
  (5, 'Cherry Jam'),
  (6, 'Brussels Sprouts'),
  (7, 'Lemon juice'),
  (8, 'Sesame seeds'),
  (9, 'Pepper'),
  (10, 'Salt'),
  (11, 'Olive oil'),
  (12, 'Macaroni'),
  (13, 'Butter'),
  (14, 'Flour'),
  (15, 'Shredded Cheddar cheese'),
  (16, 'Eggs'),
  (17, 'Soy sauce'),
  (18, 'Sugar'),
  (19, 'Olive Oil');

-- Inserting steps into the Step table
INSERT INTO Step (StepID, Description)
VALUES
  (1, 'Beat Cream Cheese'),
  (2, 'Add condensed Milk and blend'),
  (3, 'Add Lemon Juice and blend'),
  (4, 'Add the mix to the pie crust'),
  (5, 'Spread the Cherry Jam'),
  (6, 'Place in refrigerator for 3h.'),
  (7, 'Preheat the oven'),
  (8, 'Mix the ingredients in a bowl'),
  (9, 'Spread the mix on baking sheet'),
  (10, 'Bake for 30\''),
  -- ... add other steps similarly for other recipes
  (23, 'Remove pan from fire');

