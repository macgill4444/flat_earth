class AddMonthlyDonationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :monthly_donation, :float
  end
end
