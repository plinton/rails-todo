class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def create
    params.require(:name)
    List.create(name: params[:name])
  end

  def show
  end
end
