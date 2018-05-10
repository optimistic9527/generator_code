package ${basePackage}.${controllerPackage};


/**
* ${tableComment}Controller
* @author ${author}
* @date ${date}
*/
public interface ${doNameUpperCamel}Controller {
    /**
    * 添加${doNameUpperCamel}
    * @param ${doNameUpperCamel ? uncap_first}DTO
    * @return
    */
    String add(${doNameUpperCamel}DTO ${doNameUpperCamel ? uncap_first}DTO);

    /**
    *  根据id删除${doNameUpperCamel}
    * @param id
    * @return
    */
    String delete(String id);

    /**
    * 修改${doNameUpperCamel}
    * @param ${doNameUpperCamel ? uncap_first}DTO
    * @return
    */
    String update(${doNameUpperCamel}DTO ${doNameUpperCamel ? uncap_first}DTO);

    /**
    * 根据id获取${doNameUpperCamel}信息
    * @param id
    * @return
    */
    String detail(String id);

    /**
    * 分页
    * @param pageSize 第几页
    * @param pageNum 显示多少
    * @return
    */
    String listPage(int pageSize,int pageNum);
}
