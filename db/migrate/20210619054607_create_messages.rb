class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :title
      t.string :content
      t.integer :sender_id
      t.integer :receiver_id
      t.boolean :is_read, default: false
      t.boolean :is_deleted, default: false
      t.datetime :read_on
      t.timestamps
    end
  end
end
