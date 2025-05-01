class TasksController < ApplicationController
  before_action except: [:index]
  def index
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
    @tasks = Task.all
  end

  def show
  end
end
