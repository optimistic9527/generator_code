package ${basePackage}.${servicePackage};

import com.github.pagehelper.PageInfo;

import java.util.List;
/**
* ${tableComment}Service
* @author ${author}
* @date ${date}
*/
public interface ${doNameUpperCamel}Service{
    /**
    * 查询所有信息
    * @return List<${doNameUpperCamel}> 记录集
    */
    List<${doNameUpperCamel}DTO> findAll();
    /**
    查询部分信息
    @param ${doNameUpperCamel ? uncap_first}DTO 过滤信息
    @return List<${doNameUpperCamel}DTO> 记录集
    */
        List<${doNameUpperCamel}DTO> findList(${doNameUpperCamel}DTO ${doNameUpperCamel ? uncap_first}DTO);
    /**
    * 主键获取记录
    * @param id 主键
    * @return ${doNameUpperCamel}DTO 记录
    */
     ${doNameUpperCamel}DTO getById(String id);
    /**
    * 获取单条记录
    * @param ${doNameUpperCamel ? uncap_first}DTO 过滤信息
    * @return ${doNameUpperCamel}DTO 记录
    */
     ${doNameUpperCamel}DTO get(${doNameUpperCamel}DTO ${doNameUpperCamel ? uncap_first}DTO);
    /**
    * 添加记录
    * @param ${doNameUpperCamel ? uncap_first}DTO 添加信息
    * @return int 返回值
    */
     int insert(${doNameUpperCamel}DTO ${doNameUpperCamel ? uncap_first}DTO);
    /**
    * 修改记录
    * @param ${doNameUpperCamel ? uncap_first}DTO 需要修改信息
    * @return int 返回值
    */
     int update(${doNameUpperCamel}DTO ${doNameUpperCamel ? uncap_first}DTO);
    /**
    * 删除记录
    * @param id 主键ID
    */
     void delete(String id);
    /**
    * 分页查询
    * @return Page<${doNameUpperCamel}DTO> 分页信息
    */
     PageInfo<${doNameUpperCamel}DTO> findPage(int pageNum,int pageSize);
}
