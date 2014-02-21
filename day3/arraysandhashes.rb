#ahash = {"key" => "value"}
#person1 = {"name" => "Casey", "age" => 23, "favoritecolor" => "blue"}
#person2 = {"name" => "Dalton", "age" => 18, "favoritecolor" => "purple"}

#person1["name"]

colleges = {"BR" => "Branford", "BK" => "Berkeley"}
text = "Berkeley is the best I love BK, it's better than BR"
puts text
["BR", "BK"].each do |abbrev|
  text = text.sub(abbrev, colleges[abbrev])
end
puts text
