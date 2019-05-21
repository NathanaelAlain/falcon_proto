class PartPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def show?
      true
    end

    def update?
      true
    end

    def index?
      true
    end

  end
end
