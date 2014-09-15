class TutorsController < ApplicationController
  before_action :authenticate_user!

  def new
  end

  def create
    tutor_params.merge( {:by => current_user.email} )

    @tutor = Tutor.new(tutor_params)

    @tutor.save
    redirect_to @tutor
  end

  def edit

    if Tutor.exists?(params[:by => current_user.email])
      @tutor = Tutor.find(params[:by => current_user.email])
    else
      @tutor = Tutor.new(tutor_params)
    end

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
       params.require(:tutor).permit(:name, :degree, :place, :country, :about, :by)
    end
end
