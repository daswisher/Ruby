require 'httparty'
require 'json'
token = "e6a75d6b6d7b0fdd0eee93fd3c141d808852a0e9" 

user = HTTParty.get "https://api.github.com/user",
		:headers => {
				"Authorization" => "token #{token}",
				"User-Agent" => "codecademy"
			}
puts "Hi, my username is #{user["login"]}"


'''
OAuth uses tokens instead of usernames/passwords for input as a means to secure user login credentials. From a security perspective, it's ideal to conceal user credentials as much as possible (especially in third party interactions) so that in the invent the third party or the token is compromised, the credentials aren't compromised. This means that the only thing that would need to be changed to maintain a secure state is to regenerate the token used in authentication.

The way token usage by a third party can be broken up is by token creation and third party authentication using said token. The process goes as follows:
A. Client sends authorization request to resource owner
B. Resource owner replies with authorization grant
C. Authorization grant is forwarded from the client to the authorization server
D. Authorization returns an access token
E. Client passes the token to the resource server
F. Resource server gives back the protected resource that required authentication to access

Steps A-D create the token (this happens only once per user)
Steps E-F occurs at every third party request from the API
'''

#In order to retrieve all information about responses during token creation, there is a method we can call on the response from the api
client = GitHub.new
response = client.create_token
puts response.inspect #This will print all information about the response...header, body, how many requests can be made to the service, etc

#OAuth apps use client_id/client_secret as a way of authentication (this is the same prinicple as username/password on standard access methods)
#Here is an example set:
client_id = '34k32ljwer34543k5j345lkj4'
client_secret = '343634k5jwerk4545kw4poi62345oifus9d8f1123jlkjdf98'

#There is a way to check token access/privileges by checking the scope of the token
token = "e6a75d6b6d7b0fdd0eee93fd3c141d808852a0e9:
request_headers = {"User-Agent" => "codecademy", "Authorization" => "token: #{token}"}

respones = HTTParty.get "https://api.github.com",
		:headers => request_headers
print response.headers["X-OAuth-Scopes"]
