class WesterosService
  def self.all_houses
    response = Faraday.get 'https://anapioficeandfire.com/api/houses'
    house_names = JSON.parse(response.body)
  end




end
