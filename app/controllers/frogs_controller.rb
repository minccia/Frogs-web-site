class FrogsController < ApplicationController
  def index 
    @frogs = Frog.all
  end

  def show 
    @frog = Frog.find(params[:id])
  end

  def new 
  end

  def create 
    frog = Frog.new(new_frog_params)
    if frog.save
      redirect_to(frog_path frog)
      return
    end
    redirect_to(new_frog_path)
  end

  private 
  def new_frog_params
    params.permit(
      :name, :scientific_name,
      :age, :on_sale
    )
  end
end