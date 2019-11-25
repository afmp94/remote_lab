class CreateLabLeds < ActiveRecord::Migration[5.2]
  def change
    create_table :lab_leds do |t|


      t.timestamps
    end
  end
end
