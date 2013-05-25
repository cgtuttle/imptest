class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.string :sensor_id
      t.decimal :value

      t.timestamps
    end
  end
end
