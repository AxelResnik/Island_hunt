class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    user == record.user
  end

  def create?
    true
  end

  def destroy?
    user == record.user
  end

  def new?
    true
  end
end
