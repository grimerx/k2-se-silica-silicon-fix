-- Restore silicon as an ingredient for the base electronic-components recipe.
-- See this thread : https://mods.factorio.com/mod/bzsilicon/discussion/61b363888772328aca299884
recipe_line = { type="item", name="silicon", amount = 2 }
table.insert( data.raw.recipe["electronic-components"].ingredients,  recipe_line)

log(serpent.block(data.raw.recipe["electronic-components"]))

for i,v in ipairs(data.raw.recipe["electronic-components"].ingredients) do
  log(v.name)
  if v.name == "silicon-wafer" or v[1] == "silicon-wafer" then
    log('Removing')
    log(serpent.block(data.raw.recipe["electronic-components"].ingredients))
  	table.remove(data.raw.recipe["electronic-components"].ingredients, i)
    log(serpent.block(data.raw.recipe["electronic-components"].ingredients))
    break
  end
end