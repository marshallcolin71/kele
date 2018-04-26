module Roadmap
  def get_roadmap
    response = self.class.get("#{@api_url}/roadmaps/#{roadmap_id}", headers: {"authorization" => @auth_token})
  end

  def get_checkpoint
    response = self.class.get("#{@api_url}/checkpoints/#{checkpoint_id}", headers: {"authorization" => @auth_token})
  end
end
