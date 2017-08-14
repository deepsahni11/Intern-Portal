class InternshipsController < ApplicationController
before_action :find_internship, only: [:show, :edit, :update, :destroy]

  def index
    @internships = Internship.all.order("created_at DESC")
  end

  def show

  end

  def new
    @internship = current_user_company.internships.build
  end

  def create
    @internship = current_user_company.internships.build(internship_params)

    if @internship.save
      redirect_to root_path
    else
      render 'new'
    end

  end

  def edit
  end

  def update
    if @internship.update(internship_params)
      redirect_to internship_path(@internship)
    else
      render "edit"
    end

  end

  def destroy
    @internship.destroy
    redirect_to root_path
  end

  private

  def internship_params
    params.require(:internship).permit(:work,:stipend,:benefits,:duration,:location,:details,:position_status)
  end

  def find_internship
    @internship = Internship.find(params[:id])
  end
end
