class CommentMailer < ApplicationMailer
  def comment_notify_email(user)
    @user = user
    mail to: "553815182@qq.com", subject: 'HTML 课程登录指南'
  end
end
