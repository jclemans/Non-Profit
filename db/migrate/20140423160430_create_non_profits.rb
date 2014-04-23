class CreateNonProfits < ActiveRecord::Migration
  def change
    create_table :non_profits do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
    create_table :donations do |t|
      t.integer :user_id
      t.integer :non_profit_id
      t.string :token
      t.decimal :amount, :precision => 9, :scope => 2
      t.timestamps
    end
  end
end
