package com.yc.atcrowdfunding.dao;

import com.yc.atcrowdfunding.bean.TPermission;
import com.yc.atcrowdfunding.bean.TPermissionExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TPermissionMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_permission
     *
     * @mbggenerated Wed Aug 21 11:28:20 GMT+08:00 2019
     */
    int countByExample(TPermissionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_permission
     *
     * @mbggenerated Wed Aug 21 11:28:20 GMT+08:00 2019
     */
    int deleteByExample(TPermissionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_permission
     *
     * @mbggenerated Wed Aug 21 11:28:20 GMT+08:00 2019
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_permission
     *
     * @mbggenerated Wed Aug 21 11:28:20 GMT+08:00 2019
     */
    int insert(TPermission record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_permission
     *
     * @mbggenerated Wed Aug 21 11:28:20 GMT+08:00 2019
     */
    int insertSelective(TPermission record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_permission
     *
     * @mbggenerated Wed Aug 21 11:28:20 GMT+08:00 2019
     */
    List<TPermission> selectByExample(TPermissionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_permission
     *
     * @mbggenerated Wed Aug 21 11:28:20 GMT+08:00 2019
     */
    TPermission selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_permission
     *
     * @mbggenerated Wed Aug 21 11:28:20 GMT+08:00 2019
     */
    int updateByExampleSelective(@Param("record") TPermission record, @Param("example") TPermissionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_permission
     *
     * @mbggenerated Wed Aug 21 11:28:20 GMT+08:00 2019
     */
    int updateByExample(@Param("record") TPermission record, @Param("example") TPermissionExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_permission
     *
     * @mbggenerated Wed Aug 21 11:28:20 GMT+08:00 2019
     */
    int updateByPrimaryKeySelective(TPermission record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_permission
     *
     * @mbggenerated Wed Aug 21 11:28:20 GMT+08:00 2019
     */
    int updateByPrimaryKey(TPermission record);
}