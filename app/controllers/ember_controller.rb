class EmberController < ApplicationController
  skip_before_action :ensure_authenticated_master_face
  def start
  end
end
