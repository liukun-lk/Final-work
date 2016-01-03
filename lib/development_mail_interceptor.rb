class DevelopmentMailInterceptor
  def self.delivering_email(message)
    message.subject = "#{message.subject}"
    #message.to = Rails.env.development? ? "xxx@qq.com" : "xxx2@qq.com"
    message.to =  "553815182@qq.com"
    #message.cc =  "xxx@qq.com"
  end
end