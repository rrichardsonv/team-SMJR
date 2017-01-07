get "/decks/:id/rounds/new" do
  @played_deck = Deck.find(params[:id])
  @current_round = Round.create(:player_id => session[:user_id], :deck_id => @played_deck.id)
  redirect "/rounds/#{@current_round.id}/cards/#{@current_round.deck.cards.first.id}"
end
#
# get "/rounds/:id" do
#   @current_round = Round.find(params[:id])
#   erb :"/rounds/show"
# end
# logic is currently going in to round/id/cards/id
