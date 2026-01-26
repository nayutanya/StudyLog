class CreateStudyLogs < ActiveRecord::Migration[8.1]
  def change
    create_table :study_logs do |t|
      t.references :task, null: false, foreign_key: true
      t.datetime :started_at
      t.datetime :ended_at
      t.integer :duration

      t.timestamps
    end
  end
end
