class CreateExperimentTests < ActiveRecord::Migration[5.2]
  def change
    create_table :experiment_tests do |t|
      t.references :lab_led, foreign_key: true

      t.timestamps
    end
  end
end
