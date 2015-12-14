class CreateSalarayRanges < ActiveRecord::Migration
  def change
    create_table :salaray_ranges do |t|
      t.float :min_salary
      t.float :max_salary
      t.references :job, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
