module Messages
  def get_messages(page = nil)
    @page = (page == nil ? "/" : "?page=#{page}")
    response = self.class.get("#{@api_url}/message_threads#{@page}", headers: {"authorization" => @auth_token}).to_json
    @messages_show = JSON.parse(response)
  end

  def create_message
    self.class.post("#{@api_url}/messages", headers: {"authorization" => @auth_token}, body: {"sender"=> sender, "recipient_id" => recipient, "token" => token, "subject" => subject, "stripped-text" => body})
  end
end
