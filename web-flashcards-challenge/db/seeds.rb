decks_hash = { :wood_deck => {:title => "Types of Wood",  :author_id => 3},
               :manga_deck => {:title => "Manga classics", :author_id => 1}
}

Deck.create(decks_hash[:wood_deck])
Card.create(:question =>"Floors made of rich...",:answer => "mahogany",:deck_id => 1)
Card.create(:question =>"Washington chopped me down",:answer => "cherry",:deck_id => 1)
Card.create(:question =>"Lightest wood",:answer => "balsa",:deck_id => 1)
Card.create(:question =>"Ships masts were often",:answer => "Oak",:deck_id => 1)
Card.create(:question =>"The most popular wood in Lebanon",:answer => "Cedar",:deck_id => 1)
Card.create(:question =>"Pandas like me alot",:answer => "Bamboo",:deck_id =>1)

Deck.create(decks_hash[:manga_deck])
Card.create(:question =>"Naruto, Eyeshield, and Beezlebub were published in...",:answer => "shonen jump",:deck_id => 2)
Card.create(:question =>"Ichigo 100%, Sailor Moon, and Fruit Basket are all part of the demographic...",:answer => "shojo",:deck_id => 2)
Card.create(:question =>"Josei refers to the demographic of adult men",:answer => "false",:deck_id => 2)
Card.create(:question =>"Astro Boy, Black Jack, and Buddha were all written by",:answer => "osamu tezuka",:deck_id => 2)
Card.create(:question =>"The term for community translated photocopies of unlicensed series", :answer => "scanalation",:deck_id => 2)
Card.create(:question =>"The sound effect 'DON' is used to indicate...",:answer => "a dramatic entrance",:deck_id =>2)



team =[{:name => 'Rich', :email =>'rich@rich.com', :password=>'rich_password'},
       {:name=>'Savance', :email=>'savance@savance.com', :password=>'savance_password'},
       {:name => 'Jim', :email =>'jim@jim.com', :password=>'jim_password'},
       {:name => 'Mike', :email =>'mike@mike.com', :password=>'mike_password'},]

team.each do |team_member|
  User.create(team_member)
end
