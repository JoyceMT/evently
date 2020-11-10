class ProviderPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true  # Anyone can view a restaurant
  end

  def create?
    user.present?
  end

  def update?
    record.user == user  # Only restaurant creator can update it
  end

  def destroy?
    record.user == user # Only restaurant creator can update it
  end
end
