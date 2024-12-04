package com.example.baikiemtragki;

public class TravelServlet {



        private String tourName;
        private String destination;
        private String departureDate;
        private double price;
        private String status;

        public TravelServlet(String tourName, String destination, String departureDate, double price, String status) {
            this.tourName = tourName;
            this.destination = destination;
            this.departureDate = departureDate;
            this.price = price;
            this.status = status;
        }

        public String getTourName() {
            return tourName;
        }

        public void setTourName(String tourName) {
            this.tourName = tourName;
        }

        public String getDestination() {
            return destination;
        }

        public void setDestination(String destination) {
            this.destination = destination;
        }

        public String getDepartureDate() {
            return departureDate;
        }

        public void setDepartureDate(String departureDate) {
            this.departureDate = departureDate;
        }

        public double getPrice() {
            return price;
        }

        public void setPrice(double price) {
            this.price = price;
        }

        public String getStatus() {
            return status;
        }

        public void setStatus(String status) {
            this.status = status;
        }
    }


