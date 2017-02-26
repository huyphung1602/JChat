class AddImageToMessages < ActiveRecord::Migration[5.0]
  def change
    add_attachment :messages, :image
  end
end
