package com.example.Aclab.controller;

import com.example.Aclab.AclabApplication;
import com.uwetrottmann.tmdb2.Tmdb;
import com.uwetrottmann.tmdb2.entities.Movie;
import com.uwetrottmann.tmdb2.services.MoviesService;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import retrofit2.Response;

import java.io.*;
import java.net.URL;
import java.nio.charset.Charset;

@RestController
@RequestMapping("api")
public class helloController {


    @GetMapping
    public Movie hello(){
        Tmdb tmdb = new Tmdb(AclabApplication.API_KEY);
        MoviesService moviesService = tmdb.moviesService();
        Movie movieRes = null;
        // Call any of the available endpoints
        try {
            Response<Movie> response = moviesService.summary(550, "fr")
                    .execute();
            if (response.isSuccessful()) {
                Movie movie = response.body();
                movieRes = movie;
                System.out.println(movie.title + " is awesome!");
            }
        } catch (Exception e) {
            System.out.println("error");
        }
        return movieRes;
    }

}