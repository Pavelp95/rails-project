class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
    	t.string :text
    	t.boolean :isCompleted, default: false 
    	t.references :category, index: true
    end
  end
end
