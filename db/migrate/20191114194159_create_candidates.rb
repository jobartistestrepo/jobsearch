class CreateCandidates < ActiveRecord::Migration[5.2]
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :surname
      t.date :dateofbirth
      t.string :gender

      t.timestamps
    end
  end
end
