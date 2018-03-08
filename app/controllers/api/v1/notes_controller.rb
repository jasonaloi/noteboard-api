module Api::V1
  class NotesController < ApplicationController
    def index
      @notes = Note.all
      render json: @notes
    end

    def create
      @note = Note.create(note_params)
      render json: @note
    end

    def update
      @note = Note.find(params[:id])
      @note.update_attributes(note_params)
      render json: @note
    end

    private

    def note_params
      params.require(:note).permit(:title, :note)
    end

  end
end
