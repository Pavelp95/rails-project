class TodosController < ApplicationController
  def create
    # render json: {message: 'ok'}
    category = Category.where(title: params.require(:title)).first

    if category.nil?
    	category = Category.create(title: params[:title])
    end

    todo = Todo.create(category_id: category.id, text: params.require(:text))
    result_json = todo.as_json
    render json: result_json


  end
end