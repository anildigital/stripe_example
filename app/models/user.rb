class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :credit_cards, dependent: :destroy

  after_commit :assign_customer_id, on: :create

  def assign_customer_id
    customer = Stripe::Customer.create(email: email)
    puts "See customer"
    puts customer.inspect
    self.customer_id = customer.id
  end
end
