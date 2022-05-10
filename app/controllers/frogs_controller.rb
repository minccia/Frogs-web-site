class FrogsController < ApplicationController
  def index 
    @frogs = Frog.all
  end

  def show 
    @frog = Frog.find(params[:id])
  end

  def new; end 

  def create 
    frog = Frog.new(new_frog_params)
    if frog.save
      redirect_to(frog_path frog)
      return
    end
    redirect_to(new_frog_path)
  end

  def edit 
    @frog = Frog.find(params[:id])
  end

  def update 
    @frog = Frog.find(params[:id])
    if @frog.update!(new_frog_params)
      redirect_to frog_path(@frog)
    else  
      render 'edit'
    end
  end

  def destroy
    @frog = Frog.find(params[:id])
    @frog.destroy 
    
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Frog was removed!' }
    end
  end 

  private 
  def new_frog_params
    params.permit(
      :name, :scientific_name,
      :age, :on_sale, :description
    )
  end
end