class Bike
  attr_accessor :report_broken
  #alias :broken? :broken

  def initialize
    @broken = false
  end

  def working?
    true #unless @broken
  end

  def report_broken
    @broken = true
  end

  def broken?
    @broken
  end
end
