class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,   :validate => true
  attribute :nickname,  :captcha  => true

  def headers
    {
      :subject => "Mensagem enviada através do site",
      :to => "agenciametanoia@yahoo.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
