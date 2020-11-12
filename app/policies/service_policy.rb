class ServicePolicy < ApplicationPolicy
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
    true
  end

  def update?
    true # Only restaurant creator can update it
  end

  def destroy?
    true # Only restaurant creator can update it
  end
end
