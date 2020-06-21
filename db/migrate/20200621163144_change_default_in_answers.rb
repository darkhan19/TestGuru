class ChangeDefaultInAnswers < ActiveRecord::Migration[6.0]
  def change
    change_column_default :answers, :correct, from: true, to: false  # когда создавал почему-то указал true
  end
end
