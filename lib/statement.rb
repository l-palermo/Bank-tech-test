# Class Statement
class Statement
  def initialize
    @_history = []
  end

  def history
    @_history
  end

  def create
    "date || credit || debit || balance\n" +
      @_history.reverse_each.map { |trans| trans }.join("\n")
  end
end
