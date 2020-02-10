class PersonsController < ApplicationController
  before_action :authenticate_user!

  def index
    # params[:q]["user_id_eq"] = current_user.id
    @q = current_user.persons.ransack(params[:q])
    @person = @q.result(distinct: true).page(params[:page])
  end

  def people
    @q = current_user.persons.ransack(params[:q])
    @person = @q.result(distinct: true).page(params[:page]).per(3)
  end

  def new
    @person = Person.new
    @person.characters.build
  end

  def create
    binding.pry
    @person = Person.new(person_params)
    if @person.save
      redirect_to root_path
    else
      render :new
    end
  
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    person = Person.find(params[:id])
    person.update(person_params)
    redirect_to root_path
  end

  
  
  private

  def person_params
    params.require(:person).permit(:name, :gender, :age, :body, :height, :hair, characters_attributes: [:chara]).merge(user_id: current_user.id)
  end
end

