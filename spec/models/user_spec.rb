require 'spec_helper'

describe User do
  let(:auth_hash) { set_omniauth() }
  let(:user) { User.find_for_facebook_oauth(auth_hash) }

  subject { user }

  it { should respond_to :email }
  it { should respond_to :name }
  it { should respond_to :provider }
  it { should respond_to :uid }

end
