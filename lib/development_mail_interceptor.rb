class DevelopmentMailInterceptor
  def self.delivering_email(message)
    message.subject = "To #{message.to}: #{message.subject}"
    message.to = CONFIG["MAIL_FROM"]
  end
end
