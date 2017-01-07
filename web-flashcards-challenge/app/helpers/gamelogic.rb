helpers do
  def process_guess(args={})

    current_card = Card.find(args[:card_id].to_i)
    #raise current_card.answer
    #raise args[:body].inspect
    correct = args[:body].downcase == current_card.answer.downcase


    guess_deets = { round_id: args[:round_id],
                  card_id: args[:card_id],
                  body: args[:body],
                  correct: correct }
    new_guess = Guess.create(guess_deets)
  end

  def end_of_deck
    completed_cards = @current_round.guesses.where(correct: true).cards
    all_cards = @current_round.cards
    all_cards.reject{|card| completed_cards.include?(card)}
  end


  def check_guesses(guess_obj_array, card_id)
    correct_guess = false
    guess_obj_array.each do |guess|
      if guess.correct == true && guess.card_id == card_id
        correct_guess = true
      end
    end
      correct_guess
  end

  def done?
    #(current_round)
    completed_cards = @current_round.guesses.select{|guess| guess[:correct] }
    # raise completed_cards.first.inspect
    #.where(correct: true)
    all_cards = @current_round.cards
    if completed_cards.length == all_cards.length
      true
    else
      false
    end
  end

  def guess_count
    all_guesses = @round.guesses
    all_guesses.order(:card_id, :created_at, :correct)
  end
end

# def first_try_correct(current_round)
#   guess_array = current_round.guesses
#   guess_array.select{ |guess| guess.}
# end
