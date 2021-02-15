package com.example.Aclab.controller;

import com.example.Aclab.AclabApplication;
import com.uwetrottmann.tmdb2.Tmdb;
import com.uwetrottmann.tmdb2.entities.Movie;
import com.uwetrottmann.tmdb2.entities.MovieResultsPage;
import com.uwetrottmann.tmdb2.services.MoviesService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import retrofit2.Response;

@RestController
@RequestMapping("api")
public class helloController {

    @GetMapping
    public MovieResultsPage GetAllMovieByPopularity(@RequestHeader("page") int page){
        Tmdb tmdb = new Tmdb(AclabApplication.API_KEY);
        MoviesService moviesService = tmdb.moviesService();
        MovieResultsPage movieRes = null;
        try {
            Response<MovieResultsPage> response = moviesService.popular(page, "fr", "FR")
                    .execute();
            if (response.isSuccessful()) {
                MovieResultsPage movie = response.body();
                movieRes = movie;
                System.out.println(movie.total_results + " movie, is awesome!");
            }
        } catch (Exception e) {
            System.out.println("error");
        }
        return movieRes;
    }

    @GetMapping("/{id}")
    public Movie GetMovieById(@PathVariable("id") int id){
        Tmdb tmdb = new Tmdb(AclabApplication.API_KEY);
        MoviesService moviesService = tmdb.moviesService();
        Movie movieRes = null;
        try {
            Response<Movie> response = moviesService.summary(id, "fr")
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