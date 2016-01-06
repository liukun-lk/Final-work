ActionMailer::Base.smtp_settings = {
    :address              => 'smtp.qq.com',
    :port                 => 25,
    :domain               => 'qq.com',
    :user_name            => '553815182@qq.com',
    :password             => 'apwsvoiqferbbajh',
    # :user_name            => '892201531@qq.com',
    # :password             => 'ycvofuidkpdvbcbd',
    :authentication       => "plain",
    :enable_starttls_auto => true
    #  https://github.com/rails/rails/issues/892
    #   :openssl_verify_mode  => 'none',
}

ActionMailer::Base.default_url_options[:host] = "121.42.198.160"
# use letter_opener gem for devlopment
require "development_mail_interceptor"
Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?