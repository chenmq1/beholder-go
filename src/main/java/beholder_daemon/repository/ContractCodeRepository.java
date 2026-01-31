package beholder_daemon.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import beholder_daemon.entity.ContractCode;


@Repository
public interface ContractCodeRepository extends JpaRepository<ContractCode, String> {
    // 可以根据需要添加自定义查询方法
}