package src.main.java.com.example.model;

public class Address {
    private City city;

    public Address(City city) {
        this.city = city;
    }

    public City getCity() {
        return city;
    }
}
