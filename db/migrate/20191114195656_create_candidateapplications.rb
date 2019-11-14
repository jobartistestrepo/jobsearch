class CreateCandidateapplications < ActiveRecord::Migration[5.2]
  def change
    create_table :candidateapplications do |t|
      t.references :candidate, foreign_key: true
      t.references :job, foreign_key: true

      t.timestamps
    end
  end
end
