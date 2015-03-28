class AddIssueThreeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :issue_three, :string
  end
end
