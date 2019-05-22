class PartPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    # the user can only create a part if he is a seller.
    if record.user.seller == true
      true
    else
      raise Pundit::NotAuthorizedError, "You are not allowed to create a new part. First you need to register as a Seller."
    end
  end

  def show?
    # the user can only see his own parts and not the parts of someone else
    true
  end

  def index?
    true
  end

  def new?
    true
  end

  def edit?
    if record.user_id == user.id
      true
    else
      raise Pundit::NotAuthorizedError, "You are not the owner of the part so you can't update the part"
    end
  end

  def update?
    true
  end
end
