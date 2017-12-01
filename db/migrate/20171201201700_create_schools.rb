class CreateSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :schools do |t|
      t.column :name, :string
      t.column :date_start, :string
      t.column :date_end, :string
      t.column :major, :string
      t.column :employee_id, :integer

      t.timestamps
    end
  end
end
