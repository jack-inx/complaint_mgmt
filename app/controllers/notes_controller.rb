class NotesController < ApplicationController
  def index
    
  end

  def new
    @note = Note.new    
  end

  def create
    if params[:request] == "issues"
      @resource = Issue.find_by_id(params[:note][:resource_id])
    elsif params[:request] == "doctors"
      @resource = Doctor.find_by_id(params[:note][:resource_id])
    else
      @resource = Client.find_by_id(params[:note][:resource_id])
    end
    @resource.notes.create(:content => params[:note][:content])
    @notes = @resource.notes
    respond_to do |format|
      format.js
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

end
