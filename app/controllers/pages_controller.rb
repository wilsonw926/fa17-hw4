class PagesController < ApplicationController
  
  def index
    @todos = Todo.all
    @users = User.all
    @cats = Cat.all
  end

  def new
    @todo = Todo.new
  end

  def create
    todo = Todo.new(tasks: params[:todo][:tasks], finished: false)
    todo.save!
    redirect_to :root
  end

end