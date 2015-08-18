class AddDeliveryToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :delivery, :string
  end
end
