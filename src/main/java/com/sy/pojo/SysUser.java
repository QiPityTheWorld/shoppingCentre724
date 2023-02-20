package com.sy.pojo;
/**
 * @author 齐sir
 * @function 作用
 * @tell 讲述
 */

import com.alibaba.fastjson.annotation.JSONField;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.List;

/**
 *@BelongsProject: sySypermake724
 *@BelongsPackage: com.sy.pojo
 *@Author: yanhongwei
 *@CreateTime: 2023-02-20  12:04
 *@Description: TODO
 *@Version: 1.0
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class SysUser {
    private Long id;
    private String account;
    private String realName;
    private String password;
    private Integer sex;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JSONField(format = "yyyy-MM-dd")
    private Date birthday;
    private String phone;
    private String address;
    private Integer roleId;
    private Long createdUserId;
    @JSONField(format = "yyyy-MM-dd HH:mm:ss")
    private Date createdTime;
    private Long updatedUserId;
    private Date updatedTime;
    private String idPicPath;

    private String workPicpath;

    private SysRole sysRole;

    private List<Address> addressList;
}
