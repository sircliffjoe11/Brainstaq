class CampaignsController < InheritedResources::Base

  private

    def campaign_params
      params.require(:campaign).permit(:title, :donation_goal, :user_id, :idea_id)
    end

end
