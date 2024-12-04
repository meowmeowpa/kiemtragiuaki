package com.example.baikiemtragki;

import java.util.Date;

public class OrderServlet {
    private String orderId;
    private Date orderDate;
    private String customer;
    private String status;

    public OrderServlet(String orderId, Date orderDate, String customer, String status) {
        this.orderId = orderId;
        this.orderDate = orderDate;
        this.customer = customer;
        this.status = status;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public String getCustomer() {
        return customer;
    }

    public void setCustomer(String customer) {
        this.customer = customer;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
