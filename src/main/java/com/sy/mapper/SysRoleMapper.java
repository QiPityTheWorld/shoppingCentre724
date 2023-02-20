package com.sy.mapper;

import com.sy.pojo.SysRole;

import java.util.List;

/**
 * @author 齐sir
 * @function 作用
 * @tell 讲述
 */
public interface SysRoleMapper{

      /**
       * 条件查询
       */
      SysRole selectByAllId(Integer roleId);

      List<SysRole> selectAll();

      int update(SysRole sysRole);

      int delete(Integer id);

      int insert(SysRole sysRole);

      SysRole selectCode(Integer selectCode);
}
