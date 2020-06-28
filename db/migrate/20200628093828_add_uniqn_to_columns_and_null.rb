class AddUniqnToColumnsAndNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :users, :email, :string, false
    change_column_null :users, :password, :string, false

   # add_index :tests, [:title, :level], :unique: true -- выдает ошибкку ActiveRecord::RecordNotUnique: SQLite3::ConstraintException: UNIQUE constraint failed: tests.title, tests.level, не понял почему
  end
end
