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

    def destroy
      @note = Note.find(params[:id])
      if @note.destroy
        head :no_content, status: :ok
      else
        render json: @note.errors, status: :unprocessable_entity
      end
    end

    private

    def note_params
      params.require(:note).permit(:title, :note)
    end

  end
end
