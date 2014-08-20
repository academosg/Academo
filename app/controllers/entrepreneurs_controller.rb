class EntrepreneursController < ApplicationController
  def new
  end

  def create
    @entrepreneur = Entrepreneur.new(entrepreneur_params)

    @entrepreneur.save
    redirect_to @entrepreneur
  end

  def show
    @entrepreneur = Entrepreneur.find(params[:id])
  end

  private
    def entrepreneur_params
       params.require(:entrepreneur).permit(:name, :degree, :place, :country, :about)
    end
end
