class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.column :url, :string
      t.column :employee_id, :integer

      t.timestamps
    end
  end
end
