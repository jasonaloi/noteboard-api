module Api::V1
  class NotesController < ApplicationController
    def index
      @notes = Note.all
      render json: @notes
    end
  end
end
