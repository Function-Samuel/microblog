package com.example.thweibo;

import android.util.Log;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

public class MyHttpRequest {
    private static String TAG = "MyHttpRequest";
    public MyHttpRequest(){}

    protected String sendHttpRequest(String urlStr, String params, String requestMethod) throws IOException {
        URL url = new URL(urlStr);
        HttpURLConnection http = (HttpURLConnection) url.openConnection();
        http.setDoOutput(true);
        http.setRequestMethod(requestMethod);
        OutputStream out = http.getOutputStream();
        out.write(params.getBytes());
        out.flush();
        out.close();
        BufferedReader reader = new BufferedReader(new InputStreamReader(http.getInputStream()));
        String line = "";
        StringBuilder builder = new StringBuilder();
        while (null != (line = reader.readLine())) {
            builder.append(line);
        }
        return builder.toString();
    }
}
