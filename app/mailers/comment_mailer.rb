class CommentMailer < ApplicationMailer
  def comment_notify_email()
    user_array = []
    User.where(id: 33..35).each do |user|
      @users = user
      user_array << @users
    end
    user_array.each do |u|
      @user = u
      mail to: u.email, subject: 'HTML 课程登录指南'
    end
  end
end
