# Preview all emails at http://localhost:3000/rails/mailers/comment_mailer
class CommentMailerPreview < ActionMailer::Preview
  def comment_notify_email
    CommentMailer.comment_notify_email(User.first)
  end
end
