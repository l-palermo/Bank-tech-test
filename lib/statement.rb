# Class Statement
class Statement
  def create(acc_history)
    "date || credit || debit || balance\n" + data_format(acc_history)
  end

  private

  def data_format(acc_history)
    acc_history.reverse_each.map do |trans|
      "#{trans[:time]} || #{decimal(trans[:credit])}|| #{decimal(trans[:debit])}|| #{decimal(trans[:balance])}"
    end.join("\n")
  end

  def decimal(money)
    return money.to_s + '.00 ' if money.is_a?(Integer)
  end
end
