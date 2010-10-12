require 'restclient'
module Errorstack
  # USAGE:
  # ErrorStack::STACK_KEY = 'your stack key here'
  # begin
  #   some faulty code here
  # rescue Exception => e
  #   # Other error handling here
  #   Errorstack.es_notify(e)
  # end
  

  def self.notify(exception)
    raise "You must specify a STACK_KEY" unless defined? STACK_KEY

    params = {
      :_s => STACK_KEY,
      :_r => "json",
      :postingIP => "0.0.0.0",
      :createdDate => Time.now.to_s,
      :message => exception.message,
    }
    
    params[:backtrace] = exception.backtrace.join(",") rescue ""

    begin
      RestClient.post("http://www.errorstack.com/submit", params)
    rescue
      raise "Unable to submit an ErrorStack error."
    end
    
  end
end
