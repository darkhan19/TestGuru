class AddNullConstraintToAllTables < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:categories, :title, false)
    change_column_null(:tests, :title, false)
    remove_column(:tests, :level_id) # случайно не так назвал 
    add_column(:tests, :level, :integer) 
    change_column_default(:tests, :level, 0)
    change_column_null(:tests, :category_id, false)
    change_column_null(:tests, :title, false)
    change_column_null(:questions, :body, false)
    change_column_null(:questions, :test_id, false)
    change_column_null(:answers, :body, false)
    add_column(:answers, :correct, :bolean) #забыл добавить
    change_column_default(:answers, :correct, true)
    change_column_null(:answers, :question_id, false)
  end
end
