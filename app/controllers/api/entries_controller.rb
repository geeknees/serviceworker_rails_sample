class Api::EntriesController < ApplicationController
  def show
    @entry = Entry.find(params[:id])
    render 'show', formats: 'json', handlers: 'jbuilder'
  end
end
