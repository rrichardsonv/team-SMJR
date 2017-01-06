deck_hash = {
  :title => "Types of Wood"
}

Deck.create(deck_hash)
Card.create(:question =>"Floors made of rich...",:answer => "mahogany",:deck_id => 1)
Card.create(:question =>"Washington chopped me down",:answer => "cherry",:deck_id => 1)
Card.create(:question =>"Lightest wood",:answer => "balsa",:deck_id => 1)
Card.create(:question =>"Ships masts were often",:answer => "Oak",:deck_id => 1)
Card.create(:question =>"The most popular wood in Lebanon",:answer => "Cedar",:deck_id => 1)
Card.create(:question =>"Pandas like me alot",:answer => "Bamboo",:deck_id =>1)

rich_savance =[{:name => 'Rich', :email =>'rich@rich.com', :password=>'rich_password'},{:name=>'Savance', :email=>'savance@savance.com', :password=>'savance_password'}]

User.create(rich_savance[1])
User.create(rich_savance[0])
