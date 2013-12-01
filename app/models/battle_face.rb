class BattleFace < ActiveRecord::Base
  belongs_to :master_face

  def status
    status = read_attribute(:status)
    if status
      read_attribute(:status).to_sym
    end
  end

  def status=(new_status)
    write_attribute :status, new_status.to_s
  end
end
