class Order < ApplicationRecord
  belongs_to :user

  enum status: [:pending, :processing, :failed, :success]
end
