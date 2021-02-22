class RemoveBuyDateFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :buy_date, :date
  end
end
