require 'active_record'
require_relative 'pokemon'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "127.0.0.1",
  :username => "macadocious",
  :password => "",
  :database => "pokemon_app"
)

a = Pokemon.all.count
# puts a

b = Pokemon.where("hp > '78'")
# puts b.count

c = Pokemon.where("poke_type LIKE '%Grass%' ")
# puts c.count

d = Pokemon.where("speed > '25' AND spdefense < '40'")
# puts d.count

e = Pokemon.where("poke_type LIKE '%Poison%' AND attack > '79' AND spattack > '67' and spdefense < '100'")
# puts e.count

f = Pokemon.limit(35).pluck(:hp)
puts f

g = [Pokemon.average("hp"), Pokemon.average("defense"), Pokemon.maximum("speed")]
# puts g

h = Pokemon.where(name: 'Venonat').map{|x| [x.hp, x.moves, x.pokedex_id] }
# puts h

i = Pokemon.where("poke_type LIKE '%Fire%'").order(hp: :desc).limit(1)
# puts i.count

j = Pokemon.where("poke_type LIKE '%Ghost%'").order(defense: :asc).limit(1)

k = Pokemon.where("poke_type LIKE '%Bug%'").order(speed: :desc).limit(1)

l = Pokemon.where(name: 'Nidoran?')
# puts l
# l[0].update(name: 'Nidoran - male')
# l[1].update(name: 'Nidoran - female')

m = Pokemon.find(89)
# puts m.name

n = Pokemon.find_by(name: 'Onix')
# puts n.name

