class Api::DogsController < ApplicationController
  def index
    @dogs = Dog.all
    render "index.json.jb"
  end
end
