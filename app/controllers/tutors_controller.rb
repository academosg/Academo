class TutorsController < ApplicationController
  def new
  end

  def create
    @tutor = Tutor.new(tutor_params)

    @tutor.save
    redirect_to @tutor
  end

  def show
    @tutor = Tutor.find(params[:id])
  end

  def index
    @tutors = Tutor.all
  end

  private
    def tutor_params
       params.require(:tutor).permit(:name, :degree, :place, :country, :about)
    end
end
