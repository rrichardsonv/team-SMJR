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

  def done?
    completed_cards = @current_round.guesses.cards.where(correct: true)
    all_cards = @current_round.cards
    completed_cards.length == all_cards.length
  end

  def guess_count
    all_guesses = @round.guesses
    #hash with each card
    #[{ :card_id => , :question => , :guesses => }]



  end
end
