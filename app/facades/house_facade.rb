class HouseFacade
  attr_reader :houses,
              :house_count
  def initialize(attributes)
    @houses = create_houses(attributes)
    @house_count = @houses.count
  end

  def self.all
    HouseFacade.new(WesterosService.all_houses)
  end

  def page_number
    "Too many."
  end

  def create_houses(attributes)
    attributes.map do |a|
      House.new(a)
    end
  end

end
