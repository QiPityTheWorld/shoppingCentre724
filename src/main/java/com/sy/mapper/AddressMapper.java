package com.sy.mapper;

import com.sy.pojo.Address;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author 齐sir
 * @function 作用
 * @tell 讲述
 */
public interface AddressMapper {
      /**
       * 根据用户id查询地址
       * @param userId
       * @return
       */
      List<Address> selectByUserId(@Param("userId") Integer userId);
}
