class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.references :company, foreign_key: true
      t.string :title
      t.date :dateposted
      t.date :dateend

      t.timestamps
    end
  end
end
