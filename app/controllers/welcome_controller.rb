class WelcomeController < ApplicationController
  def index

  end
  def new
    User.where(id: 38..108).each do |user|
      CommentMailer.comment_notify_email(user).deliver_later
    end
  end
end
