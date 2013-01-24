FactoryGirl.define do
  factory :card do
    card_name "Test Card"
    mana_cost "XUBRGW"
    type_line "Creature - Wolf"
    power "3"
    toughness "5"
    expansion "expansion"
    abilities "abilities"
    flavor_text "flavor text"
    artist_info "artist info"
    collector_number "1000 / 1000"
  end
end