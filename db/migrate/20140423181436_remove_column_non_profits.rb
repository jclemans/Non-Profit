class RemoveColumnNonProfits < ActiveRecord::Migration
  def change
    change_column :non_profits, :description, :text
  end
end
