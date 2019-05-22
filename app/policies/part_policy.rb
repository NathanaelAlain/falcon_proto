class PartPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    # the user can only create a part if he is a seller.
    user.seller == true
  end

  def update?
    true
  end

  def show?
    # the user can only see his own parts and not the parts of someone else
    true
  end

  def index?
    true
  end

  def new?
    user.seller == true
  end

  def edit?
    record.user_id == user.id
  end

  def destroy?
    record.user_id == user.id
  end
end
