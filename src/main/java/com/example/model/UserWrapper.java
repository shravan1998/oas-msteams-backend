package com.example.model;

import java.util.List;

public class UserWrapper {
    private User user;
    private List<Feature> features;

    public UserWrapper() {
    }

    public UserWrapper(User user, List<Feature> features) {
        this.user = user;
        this.features = features;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<Feature> getFeatures() {
        return features;
    }

    public void setFeatures(List<Feature> features) {
        this.features = features;
    }
}
