class ExpireIdeaJob < ApplicationJob
  # queue_as :default

  # def perform(idea)
  #   @idea = idea

  #   return if idea_already_inactive?

  #   @idea.status = "inactive"
  #   @idea.save!

  #   UserMailer.with(idea: @idea).idea_expired_notice.deliver_later
  # end

  # private 

  # def idea_already_inactive?
  #   @idea.status == "inactive"
  # end
end
