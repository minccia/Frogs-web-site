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
  # O problema não é no capybara, dei puts page.body e está tudo certo.
  # Parece que o método update não está conseguindo salvar os novos dados
  # do formulário no banco de dados.
  # Também suspeito do método que está sendo utilizado no botão, mas no page.body
  # está dando o correto (Patch)

  private 
  def new_frog_params
    params.permit(8
      :name, :scientific_name,
      :age, :on_sale, :description
    )
  end
end