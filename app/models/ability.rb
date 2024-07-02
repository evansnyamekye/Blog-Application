class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    else
authorization
      can %i[update destroy], Post, author_id: user.id

      can :manage, Post, author_id: user.id
      can :manage, Comment, user_id: user.id

    end
  end
end
