def request_api(path)
    HTTParty.get(@api_url + path,{headers: {"User-Agent" => @user_agent},timeout: @timeout})
end

def get_request_api(path)
    HTTParty.get(@api_url + path,basic_auth_api(@auth["user_id"],@auth["token"]))
end

def api_response_debug(status_code)
    if status_code ==200
      puts "success response"
    else
      puts @response.body
 end
end

