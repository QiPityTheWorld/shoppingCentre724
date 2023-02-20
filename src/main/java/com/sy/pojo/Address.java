package com.sy.pojo;
/**
 * @author 齐sir
 * @function 作用
 * @tell 讲述
 */

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.Date;

/**
 *@BelongsProject: sySypermake724
 *@BelongsPackage: com.sy.pojo
 *@Author: yanhongwei
 *@CreateTime: 2023-02-20  12:00
 *@Description: TODO
 *@Version: 1.0
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Address {
    private Integer id;
    private String contact;
    private String addressDesc;
    private String postCode;
    private String tel;
    private Integer userId;
    private Integer createdUserId;
    private Date createdTime;
    private Integer updatedUserId;
    private Date updatedTime;
}
