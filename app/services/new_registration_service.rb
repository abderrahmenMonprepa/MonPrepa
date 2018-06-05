class NewRegistrationService



  class << self
    def create(params)
      type = params[:document_type]
      subject = params[:document_subject]
      Document.new(document_type: 'test', document_subject: 'test')
    end
  

  def create_fail_error_message(record)
    "Could not create #{record.class}" \
    " because #{record.errors.full_messages.join(', ')}"

    puts "---------------------------------ok-----------------------------------------"
  end


	 end



end