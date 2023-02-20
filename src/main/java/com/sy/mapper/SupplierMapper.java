package com.sy.mapper;

import com.sy.pojo.Supplier;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author 齐sir
 * @function 作用
 * @tell 讲述
 */
public interface SupplierMapper {
      List<Supplier> selectAll();

      Supplier selectById(@Param("id") Integer id);

      List<Supplier> selectByIdSupplier(@Param("ids")Integer[] id);

      /**
       * 入库单码模糊匹配
       * @return
       */
      List<Supplier> selectByIdMap(@Param("querySupCode") String querySupCode,@Param("querySupName") String querySupName);

      int update(Supplier supplier);

      int delete(Integer id);

      int insert(Supplier supplier);
}
