class CreatePersonalInfos < ActiveRecord::Migration
  def change
    create_table :personal_infos do |t|
      t.float :height
      t.string :weight
      t.string :float
      t.references :person, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
