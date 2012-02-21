ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => CONFIG['SENDGRID_USERNAME'],
  :password       => CONFIG['SENDGRID_PASSWORD'],
  :domain         => 'heroku.com'
}

ActionMailer::Base.default_url_options = { :host => "localhost:3000" }

if Rails.env.development?
  ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor)
end
