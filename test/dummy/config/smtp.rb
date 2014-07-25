ActionMailer::Base.smtp_settings = {
	:address              => "dagmar.izap.com.br",
	:port                 => 25,
	:domain               => "ipop.com.br",
	:user_name            => "izap@dagmar.izap.com.br",
	:password             => "izap",
	:authentication       => "plain"
}
