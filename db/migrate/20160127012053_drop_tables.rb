class DropTables < ActiveRecord::Migration
  def change
    drop_table :plans
    drop_table :subscriptions
    drop_table :coupons
  end
end
