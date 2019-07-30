# Class Balance
class Balance
  def initialize
    @pot = 0
  end

  def plus(arg)
    @pot += arg
  end

  def minus(arg)
    @pot -= arg
  end
end
