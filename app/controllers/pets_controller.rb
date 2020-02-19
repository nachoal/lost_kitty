class PetsController < ApplicationController
  before_action :find_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
  end

  def show
  end

  def edit
  end

  def update

    @pet.update(pet_params)

    redirect_to pets_path
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.save

    # redirec to the show page of that created pet
    redirect_to pet_path(@pet)
  end

  def destroy
    @pet.destroy
    redirect_to pets_path
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :address, :found)
  end

  def find_pet
    @pet = Pet.find(params[:id])
  end
end
