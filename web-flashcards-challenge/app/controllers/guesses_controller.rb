post "/guesses" do
  user_guess = params[:guess]
  @current_round = Round.find(user_guess[:round_id].to_i)
  process_guess(params[:guess])

  if done?
    redirect "/rounds/#{@current_round.id}"
  else
    redirect "/rounds/#{@current_round.id}/cards/#{@current_round.cards.sample.id}"
  end
end


#To keep track of count
#Guess.where(:round_id => 2).count(:conditions => {:correct => true})




