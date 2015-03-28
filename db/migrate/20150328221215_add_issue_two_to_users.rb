class AddIssueTwoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :issue_two, :string
  end
end
