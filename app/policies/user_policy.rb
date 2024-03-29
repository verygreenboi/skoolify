class UserPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    @user.vip?
  end

  def update?
    @user.admin?
  end

  def destroy?
    @user.admin?
  end

end
