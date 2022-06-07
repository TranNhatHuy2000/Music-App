package com.example.appmusic.Service;

public class APIservice {
    private static String base_url = "https://trannhathuy18it3.000webhostapp.com/Server/";

    public static Dataservice getService(){
        return APIRetrofitClient.getClient(base_url).create(Dataservice.class);
    }
}
