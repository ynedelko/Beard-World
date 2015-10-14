class BeardsController < ApplicationController
  def index
    @beards = Beard.all
  end
end
