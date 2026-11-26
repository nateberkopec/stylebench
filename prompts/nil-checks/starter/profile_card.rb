class ProfileCard
  def initialize(user)
    @user = user
  end

  def name
    if @user && @user.name && !@user.name.empty?
      @user.name
    else
      "Guest"
    end
  end

  def avatar_url
    if @user && @user.avatar
      @user.avatar.url
    else
      "/images/default-avatar.png"
    end
  end

  def member_since
    if @user
      @user.created_at.strftime("%B %Y")
    else
      "Not a member"
    end
  end

  def can_message?
    !@user.nil? && @user.messaging_enabled
  end
end
