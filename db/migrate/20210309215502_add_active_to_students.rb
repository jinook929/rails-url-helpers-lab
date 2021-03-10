class AddActiveToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :active, :boolean
    change_column_default :students, :active, false
  end
end
