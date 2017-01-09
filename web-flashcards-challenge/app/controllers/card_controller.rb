get "/rounds/:round_id/cards/:card_id" do
  @current_round = Round.find_by(id: params[:round_id])

  @card_guesses = @current_round.guesses
  if check_guesses(@card_guesses, params[:card_id])
    redirect "/rounds/#{@current_round.id}/cards/#{@current_round.cards.sample.id}"
  else
    @current_card = Card.find_by(id: params[:card_id])
    erb :"/cards/show"
  end
end

