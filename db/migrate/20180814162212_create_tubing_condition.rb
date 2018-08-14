class CreateTubingCondition < ActiveRecord::Migration
  def change
    create_table :tubing_conditions do |t|
      t.string :weather_condition
      t.integer :temperature_f
      t.integer :flow_rate_cfs
    end
    add_index :tubing_conditions, :weather_condition
    add_index :tubing_conditions, :temperature_f
    add_index :tubing_conditions, :flow_rate_cfs
  end
end
