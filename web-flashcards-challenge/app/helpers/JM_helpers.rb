helpers do

  def guess_check(params)
    card = Card.find(params[:card_id])
    if card.answer.downcase == params[:body].downcase
      true
    else
      false
    end
  end
end
