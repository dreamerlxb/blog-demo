class Ability
  include CanCan::Ability

  attr_reader :user

  def initialize(user)
    @user = user

    if @user.is_a?(GuestUser)
      # 未登录
      roles_for_anonymous
    else
      roles_for_topics
      roles_for_blogs
      roles_for_comments
      roles_for_portfolios
      basic_read_only
    end
  end

  # 未登录用户权限
  def roles_for_anonymous
    cannot :manage, :all
    basic_read_only
  end

  def roles_for_topics
    can :create, Topic
    can [:update, :destroy], Topic do |t|
      t.user_id == user.id
    end
  end

  def roles_for_blogs
    can :create, Blog
    can :update, Blog, user_id: user.id
    can :destroy, Blog, user_id: user.id
  end

  def roles_for_comments
    can :create, Comment
    can :update, Comment, user_id: user.id
    can :destroy, Comment, user_id: user.id
  end

  def roles_for_portfolios
    unless user.is_a?(GuestUser)
      can :sort, Portfolio
    end
  end

  # 基本的只读权限
  def basic_read_only
    can :read, Topic
    can :read, Comment
    can :read, Blog
    can :read, Portfolio
  end
end
