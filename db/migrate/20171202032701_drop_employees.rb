class DropEmployees < ActiveRecord::Migration[5.1]
  def change
    remove_column :jobs, :employee_id, :integer
    remove_column :schools, :employee_id, :integer
    remove_column :blogs, :employee_id, :integer
    remove_column :projects, :employee_id, :integer
  end
end
