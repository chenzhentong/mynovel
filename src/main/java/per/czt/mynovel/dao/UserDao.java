package per.czt.mynovel.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import per.czt.mynovel.pojo.User;

public interface UserDao  extends JpaRepository<User, Integer>{

}
