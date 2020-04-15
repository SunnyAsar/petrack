class Api::V1::CategoriesController < ApplicationController
  before_action :check_params, only: :create

  def index
    render json: Category.all, staus: :ok
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      json_response 'success', true, @category, :ok
    else
      json_response "not created", false, {}, :unprocessable_entity
    end
  end

  def destroy
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

  def check_params
    return if params[:category].present?
    json_response "params can't be blank", false, {}, :unprocessable_entity
  end

end
