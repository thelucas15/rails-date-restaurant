class MatchListPolicy < ApplicationPolicy

  def destroy?
    record.user == user || user.admin
  end

  def create?
    true
  end

end
