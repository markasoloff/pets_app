class Api::PetsController < ApplicationController

  def index
    @pets = Pet.all
    render 'index.json.jbuilder' 
  end

  def show
    @pet = Pet.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @pet = Pet.new(name: params[:name],
                    species: params[:species],
                  )

    @pet.save
    render 'show.json.jbuilder'
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.name = params[:name] || @pet.name
    @pet.species = params[:species] || @pet.species
    @pet.save
    render 'show.json.jbuilder'
  end

  def destroy
   @pet = Pet.find(params[:id])
   @pet.destroy
   render json: {message: "Element successfully destroyed"} 
  end


end
