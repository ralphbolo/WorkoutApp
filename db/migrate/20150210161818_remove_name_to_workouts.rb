class RemoveNameToWorkouts < ActiveRecord::Migration
  def change
    remove_column :workouts, :name, :string
  end
end
