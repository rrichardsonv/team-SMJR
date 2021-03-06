get "/decks/:id/rounds/new" do
  @played_deck = Deck.find(params[:id])
  @current_round = Round.create(:player_id => session[:user_id], :deck_id => @played_deck.id)
  redirect "/rounds/#{@current_round.id}/cards/#{@current_round.cards.sample.id}"
end

get "/rounds/:id" do
  @current_round = Round.find(params[:id])
  @correct_first = first_try_correct(@current_round).length
  erb :"/rounds/show"
end
