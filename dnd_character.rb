def generate_ability_score
  dice_rolls = 4.times.map { rand(1..6) }
  dice_rolls.sort.reverse[0..2].sum
end

def generate_character
  abilities = {
    strength: generate_ability_score,
    dexterity: generate_ability_score,
    constitution: generate_ability_score,
    intelligence: generate_ability_score,
    wisdom: generate_ability_score,
    charisma: generate_ability_score
  }

  constitution_modifier = (abilities[:constitution] - 10) / 2
  hitpoints = 10 + constitution_modifier

  { abilities: abilities, constitution_modifier: constitution_modifier, hitpoints: hitpoints }
end

character = generate_character
puts "Abilities: #{character[:abilities]}"
puts "Constitution Modifier: #{character[:constitution_modifier]}"
puts "Hitpoints: #{character[:hitpoints]}"
