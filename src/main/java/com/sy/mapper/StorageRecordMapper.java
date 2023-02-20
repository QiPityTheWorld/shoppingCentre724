package com.sy.mapper;

import com.sy.pojo.StorageRecord;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author 齐sir
 * @function 作用
 * @tell 讲述
 */
public interface StorageRecordMapper {

      /**
       * 根据name查询类型
       * @param goodsName
       * @param supplierId
       * @param payStatus
       * @return
       */
      List<StorageRecord> selectByNameOrIdOrType(@Param("goodsName") String goodsName, @Param("supplierId") Integer supplierId, @Param("payStatus")Integer  payStatus);

      /**
       * 供货商关联的入库列表记录
       * @return
       */
      StorageRecord selectBySupplierId(@Param("id")Integer id);

      /**
       * 添加记录
       * @param storageRecord
       * @return
       */
      int insert(StorageRecord storageRecord);

      /**
       * 修改
       * @param storageRecord
       * @return
       */
      int updateById(StorageRecord storageRecord);

      /**
       * 删除
       * @param id 主键id
       * @return
       */
      int deleteBySrCode(@Param("id") Integer id);

      /**
       * 总记录数
       * @return
       */
      Long count();

      List<StorageRecord> selectGetBySupplierId(@Param("supplierId")Integer supplierId);

}
