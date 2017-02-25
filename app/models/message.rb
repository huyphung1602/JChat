class Message < ApplicationRecord
  belongs_to :sender, class_name: 'User'
  belongs_to :recipient, class_name: 'User'
  validates :subject, :body, presence: true 

  def self.unread
    where(read_at: nil)
  end

  def read?
    read_at
  end
end
