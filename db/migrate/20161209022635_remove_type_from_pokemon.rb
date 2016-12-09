class RemoveTypeFromPokemon < ActiveRecord::Migration[5.0]
  def change
    remove_column :pokemons, :type, :string
  end
end