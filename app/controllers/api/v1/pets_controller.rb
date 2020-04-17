class Api::V1::PetsController < ApplicationController
  before_action :set_pet, except: [:create, :index]

  def index
    @pets = Pet.all.includes(:category)
    render :index, status: :ok
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      @pet.pet_images.attach(pet_params[:pet_images])
      json_response 'success', true, @pet, :ok
    else
      json_response 'failure', false, {}, :unprocessable_entity
    end
  end

  def show
    render :show, staus: :ok
  end

  def update
  end

  def destroy
  end


  private

  def pet_params
    params.require(:pet).permit(:name, :age, :location, :detail, :category_id, :user_id,:pet_thumbnail, pet_images: [])
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end

end
