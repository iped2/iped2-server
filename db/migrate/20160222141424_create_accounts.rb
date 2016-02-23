class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :uuid
      t.string :device_token
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
