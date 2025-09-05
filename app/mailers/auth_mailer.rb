class AuthMailer < ApplicationMailer
  # Transactional emails should be delivered immediately
  self.deliver_later_queue_name = :realtime

  def otp_email
    @email = params[:email]
    @otp = params[:otp]
    mail(to: @email, subject: "Blueprint login code: #{@otp}")
  end
end
