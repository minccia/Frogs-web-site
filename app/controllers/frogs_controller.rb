class FrogsController < ApplicationController
  def index 
    @frogs = Frog.all
  end
end