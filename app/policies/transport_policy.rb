class TransportPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def create?
    true
  end

  def index?
    true
  end

  def destroy?
    record.user == user || user.admin
  end
end
