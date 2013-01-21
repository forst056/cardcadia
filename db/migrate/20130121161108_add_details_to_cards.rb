class AddDetailsToCards < ActiveRecord::Migration
  def change
    add_column :cards, :card_name, :string
    add_column :cards, :mana_cost, :string
    add_column :cards, :type_line, :string
    add_column :cards, :expansion, :string
    add_column :cards, :abilities, :text
    add_column :cards, :flavor_text, :text
    add_column :cards, :artist_info, :string
    add_column :cards, :collector_number, :string
    add_column :cards, :power, :string
    add_column :cards, :toughness, :string
  end
end
