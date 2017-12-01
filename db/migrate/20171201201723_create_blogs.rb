class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.column :title, :string
      t.column :description, :text
      t.column :employee_id, :integer

      t.timestamps
    end
  end
end
