class ProjectController < ApplicationController
  def index
    # render json: {message: 'ok'}
    result_json = Category.all.as_json(only: [:id, :title],include:{todos:{only:[:id, :text, :isCmpleted]}})
    render json: result_json

  end
end
