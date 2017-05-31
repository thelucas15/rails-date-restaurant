class MatchListPolicy < ApplicationPolicy
  class Scope < Scope
      def resolve
        scope.all
      end
  end
    def destroy?
      record.user == user || user.admin
    end

    def create?
      true
    end

end
