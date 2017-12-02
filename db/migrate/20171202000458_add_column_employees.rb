class AddColumnEmployees < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :job, :string
    add_column :employees, :school, :string
    add_column :employees, :project, :string

  end
end
