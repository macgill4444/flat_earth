class AddIssueFourToUsers < ActiveRecord::Migration
  def change
    add_column :users, :issue_four, :string
  end
end
