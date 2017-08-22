class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts, &:timestamps
  end
end
