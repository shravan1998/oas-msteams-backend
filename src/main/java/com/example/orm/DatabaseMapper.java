package com.example.orm;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import com.example.model.*;

import java.util.List;
import java.util.Map;

public interface DatabaseMapper {
    @Select("SELECT u.user_rid,e.emp_rid,u.full_name,u.email_id,u.pwd,u.mobile_no,u.status,GROUP_CONCAT(user_role_map.role_rid) as role_rids FROM app_user AS u" +
            " LEFT JOIN employee AS e ON(u.user_rid = e.user_rid)" +
            " LEFT JOIN user_role_map ON(u.user_rid = user_role_map.user_rid AND user_role_map.status = 1)" +
            " WHERE u.email_id = #{loginId} OR u.mobile_no = #{loginId}" +
            " GROUP BY u.user_rid,e.emp_rid,u.full_name,u.email_id,u.pwd,u.mobile_no,u.status")
    User findUserByLoginId(@Param("loginId") String loginId);

    @Select("SELECT 1 FROM app_user WHERE email_id = #{email}")
    Integer isDuplicateEmail(@Param("email") String email);

    @Select("SELECT 1 FROM app_user WHERE mobile_no = #{mobile}")
    Integer isDuplicateContact(@Param("mobile") String mobile);

    @Select("SELECT * FROM data_dictionary" +
            " WHERE dd_type = #{ddType} ORDER BY dd_value ASC")
    List<Map<?, ?>> getParentData(@Param("ddType") int ddType);

    @Select("SELECT * FROM data_dictionary" +
            " ${whereClause} " +
            " ORDER BY created_date_time DESC" +
            " LIMIT #{offSet}, #{rowLimit}")
    List<DataDictionary> getMasters(@Param("offSet") int offSet, @Param("rowLimit") int limit, @Param("whereClause") String whereClause);

    @Select("SELECT COUNT(*) as row_count FROM data_dictionary " +
            " ${whereClause} ")
    Integer getMastersCount(@Param("whereClause") String whereClause);

    @Update("UPDATE data_dictionary SET dd_value = #{ddValue}, " +
            "dd_parent_index = #{ddParentIndex}, dd_order = #{ddOrder} " +
            " WHERE dd_index = #{ddIndex} AND dd_type = #{ddType}")
    void updateDataDictionary(DataDictionary dictionary);

    // get last index for the given dictionary type
    @Select("SELECT MAX(dd_index) AS dd_index FROM data_dictionary" +
            " WHERE dd_type = #{ddType}")
    Integer getMaxDDIndex(@Param("ddType") int ddType);

    @Insert("INSERT INTO data_dictionary(dd_index, dd_value, dd_parent_index, dd_order," +
            "dd_description, dd_type, created_datetime)" +
            " VALUES(#{ddIndex}, #{ddValue}, #{ddParentIndex}, #{ddOrder}," +
            " #{ddDescription}, #{ddType}, NOW())")
    void insertDataDictionary(DataDictionary dictionary);


    @Select("SELECT * FROM `user` AS u" +
            " WHERE u.user_rid = #{userRid}")
    User getUserDetail(@Param("userRid") int userRid);

    @Select("SELECT * FROM feature AS feat" +
            " JOIN role_feature_map AS rfm ON (feat.feature_rid = rfm.feature_rid)" +
            " JOIN user_role_map AS urm ON (rfm.role_rid = urm.role_rid)" +
            " WHERE urm.user_rid = #{userRid} AND feat.status = 1" +
            " ORDER BY feat.feature_rid ASC")
    List<Feature> getFeaturesByUserRid(@Param("userRid") int userRid);


}
