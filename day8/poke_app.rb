require 'active_record'
require_relative 'pokemon'
require_relative 'poke_seeds'

ActiveRecord::Base.logger = Logger.new("./sql.log")

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "127.0.0.1",
  :username => "macadocious",
  :password => "",
  :database => "pokemon_app"
)

pokerray = get_pokemon()

# seed the database
# pokerray[0][:name]
# pokerray[0][:id].to_i
# pokerray[0][:img]
# pokerray[0][:type].join(", ")
# pokerray[0][:stats][:hp].to_i
# pokerray[0][:stats][:attack].to_i
# pokerray[0][:stats][:defense].to_i
# pokerray[0][:stats][:spattack].to_i
# pokerray[0][:stats][:spdefense].to_i
# pokerray[0][:stats][:speed].to_i
# pokerray[0][:moves][:level] - [:name]
# pokerray[0][:misc][:classification]
# pokerray[0][:misc][:height]
# pokerray[0][:misc][:weight]

pokerray.each do |pokemon|
	moves = pokemon[:moves][:level].map{|move| move[:name]}.join(", ")

	Pokemon.create(
		name: pokemon[:name],
		pokedex_id: pokemon[:id].to_i,
		img_url: pokemon[:img],
		poke_type: pokemon[:type].join(" | "),
		hp: pokemon[:stats][:hp].to_i,
		attack: pokemon[:stats][:attack].to_i,
		defense: pokemon[:stats][:defense].to_i,
		spattack: pokemon[:stats][:spattack].to_i,
		spdefense: pokemon[:stats][:spdefense].to_i,
		speed: pokemon[:stats][:speed].to_i,
		moves: moves,
		classification: pokemon[:misc][:classification],
		height: pokemon[:misc][:height],
		weight: pokemon[:misc][:weight]
	)
end