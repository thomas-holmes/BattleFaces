require 'spec_helper'

describe ApiKey do
  it "generates access token" do
    api_key = ApiKey.create(scope: 'session', master_face_id: 1)
    expect(api_key).to_not be_new_record
    expect(api_key.access_token).to match(/\S{32}/)
  end

  it "sets expired_at propery for 'session' scope" do
    Time.stub(:now) { Time.at(0) }
    api_key = ApiKey.create(scope: 'session', master_face_id: 1)
    expect(api_key.expired_at).to eq(4.hours.from_now)
  end

  it "sets expired_at property for 'api' scope" do
    Time.stub(:now) { Time.at(0) }
    api_key = ApiKey.create(scope: 'api', master_face_id: 1)
    expect(api_key.expired_at).to eq(30.days.from_now)
  end
end
