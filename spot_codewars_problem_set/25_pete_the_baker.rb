=begin
Pete likes to bake some cakes. He has some recipes and ingredients. Unfortunately he is not good in maths.
Can you help him to find out, how many cakes he could bake considering his recipes?
Write a function cakes(), which takes the recipe (object) and the available ingredients (also an object)
and returns the maximum number of cakes Pete can bake (integer). For simplicity there are no units for the
amounts (e.g. 1 lb of flour or 200 g of sugar are simply 1 or 200). Ingredients that are not present in the
objects, can be considered as 0.

Examples:
// must return 2
cakes({flour: 500, sugar: 200, eggs: 1}, {flour: 1200, sugar: 1200, eggs: 5, milk: 200});
// must return 0
cakes({apples: 3, flour: 300, sugar: 150, milk: 100, oil: 100}, {sugar: 500, flour: 2000, milk: 2000});
=end

=begin
P:
  Input: two hashes (recipe, ingredients)
  Output: integer

  Requirements:
    - Given two hashes: the recipe and the ingredients
    - Return the maximum number of cakes Pete can bake.

A:
  - Initialize a variable `amounts` equal to an empty array
  - Iterate through the first hash (recipe) |ingredient, qty|
    - If a key exists in the first hash that doesn't exist in the second, return 0
    - Otherwise, Divide the values associated with the keys in hash_2 by the values of the corresponding keys in hash_1
    and add the result to `amounts`
  - Return the minimum value from `amounts`
=end

def cakes(recipe, ingredients)
  amounts = []

  recipe.each do |key, value|
    return 0 if !ingredients.key?(key)

    amounts << (ingredients[key] / value)
    # amounts << (ingredients.fetch(key, 0) / value)
  end
  amounts.min
end

def cakes(recipe, ingredients)
  recipe.map { |k, v| ingredients.fetch(k, 0) / v }.min
end


p cakes({"flour"=>500, "sugar"=>200, "eggs"=>1}, {"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200}) == 2

p cakes({"cream"=>200, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>1700, "flour"=>20000,
"milk"=>20000, "oil"=>30000, "cream"=>5000}) == 11

p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000,
"milk"=>2000}) == 0

p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000,
"milk"=>2000, "apples"=>15, "oil"=>20}) == 0

p cakes({"eggs"=>4, "flour"=>400},{}) == 0

p cakes({"cream"=>1, "flour"=>3, "sugar"=>1, "milk"=>1, "oil"=>1, "eggs"=>1},{"sugar"=>1, "eggs"=>1, "flour"=>3,
"cream"=>1, "oil"=>1, "milk"=>1}) == 1


