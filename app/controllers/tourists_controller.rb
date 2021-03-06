class TouristsController < ApplicationController

    def index
      @tourists = Tourist.all
    end

    def show
      @tourist = Tourist.find(params[:id])

    end

    def new
      @tourist = Tourist.new
      # @tourist.trips.build
    end

    def edit
      @tourist = Tourist.find(params[:id])
    end

    def create
      # byebug
      @tourist = Tourist.create(tourist_params)
      redirect_to tourist_path(@tourist)
    end

    def update
      @tourist = Tourist.find(params[:id])
      @tourist.update(tourist_params)
      redirect_to tourist_path(@tourist)
    end

    def destroy
      @tourist = Tourist.find(params[:id])
      @tourist.destroy
      redirect_to tourists_path
    end

    private

    def tourist_params
      params.require(:tourist).permit(:name, countries_attributes: [:name, :language], country_ids: [])

    end
  end
