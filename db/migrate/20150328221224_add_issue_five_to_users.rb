class AddIssueFiveToUsers < ActiveRecord::Migration
  def change
    add_column :users, :issue_five, :string
  end
end
