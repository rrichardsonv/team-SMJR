helpers do
  def process_guess(args={})
    current_card = Card.find(card_id)
    correct = user_guess == current_card.answer
    guess_deets = { round_id: args[:round_id],
                  card_id: args[:card_id],
                  body: args[:user_guess],
                  correct: args[:correct] }
    new_guess = Guess.new(guess_deets)

    if new_guess.save
      raise 'saved now what!'
    else
      @errors = new_guess.errors.full_messages
      raise 'didnt save now what'
    end
  end
  def end_of_deck
    completed_cards = @current_round.guesses.where(correct: true).cards
    all_cards = @current_round.cards
    all_cards.reject{|card| completed_cards.include?(card)}
  end

  def done?
    completed_cards = @current_round.guesses.where(correct: true).cards
    all_cards = @current_round.cards
    completed_cards.length == all_cards.length
  end

  def guess_count
    all_guesses = @round.guesses
    all_guesses.order(:card_id, :created_at, :correct)
  end
end
