class Order < ApplicationRecord
  belongs_to :user

  enum status: [:pending, :failed, :success]
end
