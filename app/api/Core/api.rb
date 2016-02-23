module Core
  class API < Grape::API
    version 'v1'
    format :json
    prefix :api

    resource :users do
      desc 'register new account'
      post do
        user = User.create()
        account = user.accounts.create(uuid: SecureRandom.uuid)
        user.save
        {
            userid: user.id,
            uuid: account.uuid,
        }
      end
    end
  end
end
