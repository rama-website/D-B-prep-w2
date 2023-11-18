import mysql from 'mysql2';

const connection = mysql.createConnection({
  host: 'localhost',
  port: 3306,
  user: 'hyfuser',
  password: 'hyfpassword',
  database: 'RecipesDatabase',
});

const recipeQueries = [
  {
    description: 'Vegetarian recipes with potatoes',
    query: `SELECT R.Name AS recipe_name
            FROM Recipe R
            JOIN RecipeIngredient RI ON R.RecipeID = RI.RecipeID
            JOIN Ingredient I ON RI.IngredientID = I.IngredientID
            JOIN Category C ON R.CategoryID = C.CategoryID
            WHERE C.Name = 'Vegetarian'
            AND I.Name LIKE '%Potatoes%';`,
  },
  {
    description: 'Cakes that do not need baking',
    query: `SELECT R.Name
            FROM Recipe R
            JOIN Category C ON R.CategoryID = C.CategoryID
            WHERE C.Name = 'Cake'
            AND R.Name NOT IN (
              SELECT R.Name
              FROM Recipe R
              JOIN RecipeStep RS ON R.RecipeID = RS.RecipeID
              JOIN Step S ON RS.StepID = S.StepID
              WHERE S.Description LIKE '%Bake%'
            );`,
  },
  {
    description: 'Vegan and Japanese recipes',
    query: `SELECT R.Name
            FROM Recipe R
            JOIN Category C ON R.CategoryID = C.CategoryID
            WHERE C.Name IN ('Vegan', 'Japanese');`,
  },
];

// Execute each query
for (const { description, query } of recipeQueries) {
  connection.query(query, (err, results) => {
    if (err) {
      console.error(`Error executing query (${description}):`, err);
      return;
    }

    console.log(`* ${description}:\n`, results.length ? results.map(({ Name }) => Name).join(', ') : 'No recipes found');
  });
}

// Close the connection
connection.end();
