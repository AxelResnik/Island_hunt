class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def create?
      user == current_user || user.admin
    end

    def destroy?
      user == record.user
    end
  end

  def new?
    true
  end
end
