package com.example.security;

import org.springframework.security.core.GrantedAuthority;

import java.util.Comparator;

public class AuthorityComparator  implements Comparator<GrantedAuthority> {

    public AuthorityComparator() {
    }

    public int compare(GrantedAuthority g1, GrantedAuthority g2) {
        if (g2.getAuthority() == null) {
            return -1;
        } else {
            return g1.getAuthority() == null ? 1 : g1.getAuthority().compareTo(g2.getAuthority());
        }
    }
}
