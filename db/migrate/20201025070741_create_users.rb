class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :firstName
      t.string :lastName
      t.string :bio
      t.string :avatar
      t.string :email
      t.string :longitude
      t.string :latitude

      t.timestamps
    end
  end
end
