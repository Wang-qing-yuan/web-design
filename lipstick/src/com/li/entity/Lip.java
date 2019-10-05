package com.li.entity;

/**
 * @author wang
 * @className Lip
 * @Description TODO
 * @Date 2019/10/4
 * @Version 1.0
 **/
public class Lip {
    private Integer id;
    private String name;
    private String cover;
    private int  price;

    public Lip(Integer id, String name, String cover, int price) {
        this.id = id;
        this.name = name;
        this.cover = cover;
        this.price = price;
    }

    public Lip() {

    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCover() {
        return cover;
    }

    public void setCover(String cover) {
        this.cover = cover;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Lip{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", cover='" + cover + '\'' +
                ", price=" + price +
                '}';
    }
}
