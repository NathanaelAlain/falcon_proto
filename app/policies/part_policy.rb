class PartPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    # the user can only create a part if he is a seller.
    record.user.seller == true
  end

  def show?
    # the user can only see his own parts and not the parts of someone else
    true
  end

  def index?
    true
  end
end
