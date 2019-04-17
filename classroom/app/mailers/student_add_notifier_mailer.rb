# Student Add Mailer Code
class StudentAddNotifierMailer < ApplicationMailer
  default from: "#{current_user.name}@module8_classroom.com"
  def send_email
    mail(to: 'oscarmolivera@gmail.com', subject: 'New Student Added')
  end
end
