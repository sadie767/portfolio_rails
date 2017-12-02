class CreateCvs < ActiveRecord::Migration[5.1]
  def change
    create_table :cvs do |t|
      t.column :name, :string
      t.column :job, :string
      t.column :school, :string
      t.column :project, :string

    end
  end
end
