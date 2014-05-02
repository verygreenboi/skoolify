class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  enum role: [:user, :vip, :admin, :student, :teacher]

  has_one :api_key, dependent: :destroy
  has_one :profile, dependent: :destroy

  after_create :create_api_key

  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end

	private

	def create_api_key
	  ApiKey.create :user => self
	end

end
