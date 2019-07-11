class HousesController < ApplicationController
  def index
    @house_facade = HouseFacade.all
  end
end
