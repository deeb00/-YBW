package com.example.alexey.myapplicationtesttest.rest;

import android.provider.SyncStateContract;

import com.squareup.okhttp.Interceptor;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;

import java.io.IOException;

import retrofit.Retrofit;
import retrofit.http.Body;
import retrofit.http.GET;
import retrofit.http.POST;

/**
 * Created by Ashiq Uz Zoha on 9/13/15.
 * Dhrubok Infotech Services Ltd.
 * ashiq.ayon@gmail.com
 */
public class RestClient {
    private static APIService APIService;


    public static APIService getClient() {
        if (APIService == null) {
            OkHttpClient httpClient = new OkHttpClient();
            httpClient.networkInterceptors().add(new Interceptor() {
                @Override
                public Response intercept(Chain chain) throws IOException {
                    Request request = chain.request().newBuilder()
                            .addHeader("Accept", "application/json")
                            .addHeader("Content-Type", "application / json")
                            .build();
                    return chain.proceed(request);
                }
            });
            httpClient.networkInterceptors().add(new StethoInterceptor());
            Retrofit client = new Retrofit.Builder()
                    .baseUrl(SyncStateContract.Constants.API.BASE_URL)
                    .addConverterFactory(JacksonConverterFactory.create())
                    .client(httpClient)
                    .build();
            APIService = client.create(APIService.class);
        }
        return APIService;
    }

    public interface APIService {

/*Авторизация*/

        @POST("auth/")
        Call<ResponseLoginUser> signInApp(@Body RequestLoginUser requestLoginUser);
    }

}
