class House
  attr_reader :name
  def initialize(attributes)
    @name = attributes["name"]
  end

  def self.all
    data = WesterosService.all_houses
    data.map do |d|
      House.new(d)
    end
  end


end
