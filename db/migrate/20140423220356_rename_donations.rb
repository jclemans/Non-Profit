class RenameDonations < ActiveRecord::Migration
  def change
    rename_table :donations, :charges
  end
end
