class EntriesController < ApplicationController

  def index
    @entries = Entry.order(name: :asc)
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end