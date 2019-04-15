package kr.goott.gymcarry.auth;

import java.io.IOException;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.scribejava.core.builder.ServiceBuilder;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.github.scribejava.core.model.OAuthRequest;
import com.github.scribejava.core.model.Response;
import com.github.scribejava.core.model.Verb;
import com.github.scribejava.core.oauth.OAuth20Service;

import kr.goott.gymcarry.model.dto.UserDTO;

public class SNSLogin {
	private OAuth20Service oauthService;
	private String profileUrl;
	public SNSLogin(SnsValue sns) {
		this.oauthService = new ServiceBuilder(sns.getClientId())
				.apiSecret(sns.getClientSecret())
				.callback(sns.getRedirectUrl())
				.defaultScope("profile")
				.build(sns.getApi20Instance());
		this.profileUrl = sns.getProfileUrl();
	}
	public String getNaverAuthURL() {
		return this.oauthService.getAuthorizationUrl();
	}
	public UserDTO getAccessToken(String code) throws Exception{
		OAuth2AccessToken accessToken = oauthService.getAccessToken(code);
		
		OAuthRequest request = new OAuthRequest(Verb.GET, this.profileUrl);
		oauthService.signRequest(accessToken, request);
		
		Response response = oauthService.execute(request);
		return parseJson(response.getBody());
	}
	private UserDTO parseJson(String body) throws Exception {
		UserDTO userDto = new UserDTO();
		ObjectMapper mapper = new ObjectMapper();
		JsonNode rootNode = mapper.readTree(body);
		return userDto;
	}
}
