package com.example.baikiemtragki;

public class CourseServlet {
        private String courseName;
        private String instructor;
        private int duration;
        private double price;

        public CourseServlet(String courseName, String instructor, int duration, double price) {
            this.courseName = courseName;
            this.instructor = instructor;
            this.duration = duration;
            this.price = price;
        }

        public String getCourseName() {
            return courseName;
        }

        public void setCourseName(String courseName) {
            this.courseName = courseName;
        }

        public String getInstructor() {
            return instructor;
        }

        public void setInstructor(String instructor) {
            this.instructor = instructor;
        }

        public int getDuration() {
            return duration;
        }

        public void setDuration(int duration) {
            this.duration = duration;
        }

        public double getPrice() {
            return price;
        }

        public void setPrice(double price) {
            this.price = price;
        }
    }

