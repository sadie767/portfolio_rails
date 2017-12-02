class AddColumnCvId < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :cv_id, :integer
    add_column :jobs, :cv_id, :integer
    add_column :schools, :cv_id, :integer
    add_column :projects, :cv_id, :integer
  end
end
