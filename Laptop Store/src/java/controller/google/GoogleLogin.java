package controller.google;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import org.apache.http.client.fluent.Request;
import java.io.IOException;
import constant.Iconstant;
import model.GoogleAccount;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Form;

/**
 *
 * @author hungs
 */
public class GoogleLogin {

    public static String getToken(String code) throws ClientProtocolException, IOException {
         // client send auth code to auth server to get access token 
        String response = Request.Post(Iconstant.GOOGLE_LINK_GET_TOKEN)
                .bodyForm(
                        Form.form()
                                .add("client_id", Iconstant.GOOGLE_CLIENT_ID)
                                .add("client_secret", Iconstant.GOOGLE_CLIENT_SECRET)
                                .add("redirect_uri", Iconstant.GOOGLE_REDIRECT_URI)
                                .add("code", code)
                                .add("grant_type", Iconstant.GOOGLE_GRANT_TYPE)
                                .build()
                )
                .execute().returnContent().asString();

        JsonObject jobj = new Gson().fromJson(response, JsonObject.class);

        String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");

        return accessToken;

    }
    
    
    // lay resource bang cach gui access token
    public static GoogleAccount getUserInfo(final String accessToken) throws ClientProtocolException, IOException {
        
        // duong dan den api google de lay thong tin nguoi dung bang access token 
        String link = Iconstant.GOOGLE_LINK_GET_USER_INFO + accessToken;  
        
        // nhan response tu google 
        String response = Request.Get(link).execute().returnContent().asString();
        
        // chuyen doi response thanh google object 
        GoogleAccount googlePojo = new Gson().fromJson(response, GoogleAccount.class);

        return googlePojo;

    }

}
