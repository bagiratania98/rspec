class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :projects
  has_many :notes


  def name
    [first_name, last_name].join(" ")
  end


  def local?
    ["localhost", "127.0.0.1", "0.0.0.0"].include? last_sign_in_ip
  end

end
