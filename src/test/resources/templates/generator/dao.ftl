package ${basePackage}.${daoPackage};

import org.apache.ibatis.annotations.Param;
import java.util.List;
/**
* ${tableComment}DAO
* @author ${author}
* @date ${date}
*/
public interface ${doNameUpperCamel}Dao<${doNameUpperCamel}>{
    /**
    * 查询所有信息
    * @return List<${doNameUpperCamel}> 记录集
    */
    List<${doNameUpperCamel}> findAll();
    /**
    * 主键获取记录
    * @param id 主键
    * @return ${doNameUpperCamel} 记录
    */
    ${doNameUpperCamel} getById(@Param("id")String id);
    /**
    * 获取单挑记录
    * @param ${doNameUpperCamel ? uncap_first} 过滤信息
    * @return ${doNameUpperCamel} 记录
    */
    ${doNameUpperCamel} get(${doNameUpperCamel} ${doNameUpperCamel ? uncap_first});
    /**
    * 添加记录
    * @param ${doNameUpperCamel ? uncap_first} 添加信息
    * @return int 返回值
    */
    int insert(${doNameUpperCamel} ${doNameUpperCamel ? uncap_first});
    /**
    * 批量添加
    * @param list 添加信息
    */
    void batchAdd(List<${doNameUpperCamel}> ${doNameUpperCamel ? uncap_first}List);
    /**
    * 修改记录
    * @param ${doNameUpperCamel ? uncap_first} 需要的修改信息
    * @return int 返回值
    */
    int update(${doNameUpperCamel} ${doNameUpperCamel ? uncap_first});
    /**
    * 删除记录
    * @param id 主键ID
    */
    void delete(@Param("id") String id);
    /**
    * 分页查询
    * @return List<${doNameUpperCamel}> 记录集
    */
    List<${doNameUpperCamel}> findPage();
    /**
    * 条件查询
    * @param ${doNameUpperCamel ? uncap_first} 过滤条件
    * @return List<${doNameUpperCamel}> 记录集
    */
    List<${doNameUpperCamel}> findList(${doNameUpperCamel} ${doNameUpperCamel ? uncap_first});
}
