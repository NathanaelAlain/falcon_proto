class TradePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      Trade.where(user: user)
    end
  end

  def history
    true
  end
end
