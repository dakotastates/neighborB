class CreateBoardMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :board_messages do |t|
      t.string :message
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
