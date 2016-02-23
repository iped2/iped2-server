module Core
  class API < Grape::API
    version 'v1'
    format :json
    prefix :api

    resource :users do
      desc 'register new account'
      post do
        {
            userid: 'myuserid',
            uuid: 'myuuid',
        }
      end
    end
  end
end
