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
 *@CreateTime: 2023-02-20  12:01
 *@Description: TODO
 *@Version: 1.0
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class StorageRecord {
    private long id;
    private String srCode;
    private String goodsName;
    private String goodsDesc;
    private String goodsUnit;
    private Double goodsCount;
    private Double totalAmount;
    private Integer payStatus;
    private Long createdUserId;
    private Date createdTime;
    private Long updatedUserId;
    private Date updatedTime;
    private Integer supplierId;
    private Supplier supplier;
}
