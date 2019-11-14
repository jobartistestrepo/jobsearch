class CreateJobquestions < ActiveRecord::Migration[5.2]
  def change
    create_table :jobquestions do |t|
      t.references :job, foreign_key: true
      t.text :question
      t.boolean :questiontype

      t.timestamps
    end
  end
end
