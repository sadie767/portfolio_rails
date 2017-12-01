class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.column :name, :string
      t.column :date_start, :string
      t.column :date_end, :string
      t.column :description, :text
      t.column :employee_id, :integer

      t.timestamps
    end
  end
end
