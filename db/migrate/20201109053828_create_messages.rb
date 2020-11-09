class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :message
      t.belongs_to :user, null: false, foreign_key: true
      t.integer :recipient_id
      t.boolean :viewed, default: false

      t.timestamps
    end
  end
end
