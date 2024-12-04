package com.example.baikiemtragki;

public class MovieServlet {
        private String ticketId;
        private String movieName;
        private String showTime;
        private double price;

        public MovieServlet(String ticketId, String movieName, String showTime, double price) {
            this.ticketId = ticketId;
            this.movieName = movieName;
            this.showTime = showTime;
            this.price = price;
        }

        public String getTicketId() {
            return ticketId;
        }

        public void setTicketId(String ticketId) {
            this.ticketId = ticketId;
        }

        public String getMovieName() {
            return movieName;
        }

        public void setMovieName(String movieName) {
            this.movieName = movieName;
        }

        public String getShowTime() {
            return showTime;
        }

        public void setShowTime(String showTime) {
            this.showTime = showTime;
        }

        public double getPrice() {
            return price;
        }

        public void setPrice(double price) {
            this.price = price;
        }
    }


