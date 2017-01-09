get "/decks" do
  @decks = Deck.all
  erb :"/decks/show"
end

get "/decks/new" do
  @session = session[:user_id]
  @next_deck_id = Deck.all.order('id DESC').first.id + 1

  erb :'decks/new'
end

post "/decks" do
  cards = params[:card]
  new_deck = {:title => params[:deck]['title'], :author_id => params[:deck]['author_id']}
  @deck = Deck.new(new_deck)
  if @deck.save
    @cards = cards.collect do |card_number, card_hash|
      Card.new(card_hash)
    end
      @check_save = @cards.collect do |card|
        card.save
      end
  end

  if @check_save.include?(false)
    @errors = @cards.collect do |card|
      card.errors.full_messages
    end
    @next_deck_id = Deck.all.order('id DESC').first.id + 1
    @session = session[:user_id]
    erb(:'decks/new')
  else
    redirect '/'
  end
end
