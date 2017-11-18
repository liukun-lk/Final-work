ActionMailer::Base.smtp_settings = {
  address: 'smtp.163.com',
  port: 25,
  domain: '163.com',
  user_name: 'Fee1Mix@163.com',
  password: ENV['PASSWORD'],
  authentication: :login,
  enable_starttls_auto: true
  #  https://github.com/rails/rails/issues/892
  #   :openssl_verify_mode  => 'none',
}

ActionMailer::Base.default_url_options[:host] = '121.42.198.160'
# use letter_opener gem for devlopment
require 'development_mail_interceptor'
Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?
