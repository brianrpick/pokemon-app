json.array! @pokes.each do |poke|
  json.partial! 'pokemon.json.jbuilder', poke: poke
end
