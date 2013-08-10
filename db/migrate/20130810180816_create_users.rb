class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :type
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :country
      t.string :state
      t.string :institution

      t.timestamps
    end
  end
end
