get "/rounds/:round_id/cards/:card_id" do
  @current_round = Round.find(params[:round_id])
  @current_card = Card.find(params[:card_id])
  erb :'/cards/show'
end
