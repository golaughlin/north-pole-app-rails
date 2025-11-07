class CreateChildren < ActiveRecord::Migration[8.1]
  def change
    create_table :children do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :town

      t.timestamps
    end
  end
end
