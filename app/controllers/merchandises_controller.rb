# frozen_string_literal: true

class MerchandisesController < ApplicationController
  before_action :set_merchandise, only: %i[show update destroy]

  # GET /merchandises
  def index
    @merchandises = Merchandise.all

    if params.key?(:name)
      results = @merchandises.filter { |x| x.name.downcase.include? params[:name].downcase }
      if results.any?
        render json: results
      else
        render json: {}
      end
    else
      render json: @merchandises
    end
  end

  # GET /merchandises/1
  def show
    render json: @merchandise
  end

  # POST /merchandises
  def create
    @merchandise = Merchandise.new(merchandise_params)

    if @merchandise.save
      render json: @merchandise, status: :created, location: @merchandise
    else
      render json: @merchandise.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /merchandises/1
  def update
    if @merchandise.update(merchandise_params)
      render json: @merchandise
    else
      render json: @merchandise.errors, status: :unprocessable_entity
    end
  end

  # DELETE /merchandises/1
  def destroy
    @merchandise.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_merchandise
    @merchandise = Merchandise.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def merchandise_params
    params.require(:merchandise).permit(:name, :description, :department,
                                        :vendor, :tax, :cost, :retail,
                                        :quantity, :barcode, :category)
  end
end
