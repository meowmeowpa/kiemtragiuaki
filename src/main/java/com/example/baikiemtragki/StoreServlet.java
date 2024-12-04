package com.example.baikiemtragki;



public class StoreServlet {
    private String productName;
    private int quantity;
    private double price;
    private double total;

    public StoreServlet(String productName, int quantity, double price) {
        this.productName = productName;
        this.quantity = quantity;
        this.price = price;
        this.total = quantity * price;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
        this.total = this.quantity * this.price;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
        this.total = this.quantity * this.price;
    }

    public double getTotal() {
        return total;
    }
}
