class Api::V1::PetsController < ApplicationController
  def index
    @pets = Pet.all.includes(:category)
    render json: @pets
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      json_response 'success', true, @pet, :ok
    else
      json_response 'failure', false, {}, :unprocessable_entity
    end
  end

  def show
  end

  def update
  end

  def destroy
  end

  # cat
  # fa0aaf81-8d6c-42f1-8385-8c7b49b15a92

  # users
  # 6dbcb742-fcaf-4152-b421-6a9a124a7c24
  private

  def pet_params
    params.require(:pet).permit(:name, :age, :location, :detail, :category_id, :user_id)
  end

end
