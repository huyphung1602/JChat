class RemoveEmailFromMessages < ActiveRecord::Migration[5.0]
  def change
    remove_column :messages, :recipient_email, :string
  end
end
