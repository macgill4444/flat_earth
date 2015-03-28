class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :country
      t.string :bio
      t.string :addressed_issue

      t.timestamps
    end
  end
end
