class AddIssueOneToUsers < ActiveRecord::Migration
  def change
    add_column :users, :issue_one, :string
  end
end
