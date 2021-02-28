class Api::DogsController < ApplicationController
  def index
    @dogs = Dog.all
    render "index.json.jb"
  end

  def create
    @dog = Dog.new(
      name: params[:name],
      breed: params[:breed],
      disposition: params[:disposition],
    )
    #@dog.save
    render "show.json.jb"
  end

  def show
    @dog = Dog.find_by(id: params[:id])
    render "show.json.jb"
  end
  def update
  end 

  def destroy
    @dog = Dog.find_by(id: params[:id])
    #@dog.destroy
    render json: {message: "dog has been removed"}
  end 
  
end
