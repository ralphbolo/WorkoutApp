
class User < ActiveRecord::Base
  
  authenticates_with_sorcery!
  
  has_many :workouts, dependent: :destroy

  validates :email, :email => true, :length => { :minimum => 6}
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email

end

