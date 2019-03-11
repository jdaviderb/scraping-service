require_relative '../spec_helper.rb'

describe 'home' do
  it 'should allow accessing the home page' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to eq({ message: 'hello world' }.to_json)
  end
end
