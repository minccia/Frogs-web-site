class FrogsController < ApplicationController
  def index
    @frogs = Frog.all
  end

  def show
    @frog = Frog.find(params[:id])
  end

  def new
    @frog = Frog.new
  end

  def create
    @frog = Frog.new(new_frog_params)
    if @frog.save
      redirect_to(frog_path(@frog))
      return
    end
    render :new
  end

  def destroy
    @frog = Frog.find(params[:id])
    @frog.destroy

    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Frog was removed!' }
    end
  end

  def edit
    @frog = Frog.find(params[:id])
  end

  def update
    @frog = Frog.find(params[:id])
    if @frog.update(new_frog_params)
      redirect_to frog_path(@frog)
    else
      render 'edit'
    end
  end

  private

  def new_frog_params
    params.require(:frog).permit(
      :name, :scientific_name,
      :age, :on_sale, :description
    )
  end
end
