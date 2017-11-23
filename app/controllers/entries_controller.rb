class EntriesController < ApplicationController
  def index
    @entries = Entry.order("RANDOM()").limit(10)
  end
end

