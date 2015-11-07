package com.example.alexey.myapplicationtesttest.services;

import retrofit.Callback;
import retrofit.Response;
import retrofit.Retrofit;
import com.example.alexey.myapplicationtesttest.rest.RestClient

/**
 * Created by Alexey on 07.11.2015.
 */
public class InternetService {

    public int getJSON(String url){

  /*  private int timeout = 10;
    class MainTask extends AsyncTask<String, String, JSONArray>{
        @Override
        protected JSONArray doInBackground(String... params) {
            HttpURLConnection c = null;
            JSONArray response = new JSONArray();
            try {
                URL u = new URL("http://10.0.0.21:3000/users");
                c = (HttpURLConnection)u.openConnection();
                int responseCode = c.getResponseCode();

//                c.setRequestMethod("GET");
//                c.setRequestProperty("Content-length", "0");
//                c.setUseCaches(false);
//                c.setAllowUserInteraction(false);
//                c.setConnectTimeout(timeout);
//                c.setReadTimeout(timeout);
//                c.connect();


            switch (responseCode) {
                case 200:
                case 201:
                    BufferedReader br = null;
                    try {
                        br = new BufferedReader(new InputStreamReader(c.getInputStream()));
                        String line = "";
                        while ((line = br.readLine()) != null){
                            response.append(line+"\n");
                        }
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    StringBuilder sb = new StringBuilder();
                br.close();
                return sb.toString();
                //      }

            } catch (MalformedURLException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (c != null) {
                    try {
                        c.disconnect();
                    } catch (Exception ex){

                    }
                }
            }
            return null;
        }
    }*/
        return 0;
    }}
