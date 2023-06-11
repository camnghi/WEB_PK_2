package com.poly.interfaces;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.poly.entities.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User findByVerificationCode(String verificationCode);
    void deleteByVerificationCode(String verificationCode);
    User findByUsernameAndPassword(String username, String password);
}
