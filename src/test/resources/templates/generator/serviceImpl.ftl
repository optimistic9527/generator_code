package ${basePackage}.${servicePackage}Impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/**
* ${tableComment}Service
* @author ${author}
* @date ${date}
*/
@Service
public class ${doNameUpperCamel}ServiceImpl implements ${doNameUpperCamel}Service{
    @Resource
    private ${doNameUpperCamel}Dao<${doNameUpperCamel}> ${doNameUpperCamel ? uncap_first}Dao;

    @Transactional(readOnly = true)
    public List<${doNameUpperCamel}DTO> findAll(){
        return Collections.unmodifiableList(transformList(${doNameUpperCamel ? uncap_first}Dao.findAll()));
    }
    public List<${doNameUpperCamel}DTO> findList(${doNameUpperCamel}DTO ${doNameUpperCamel ? uncap_first}DTO){
        List<${doNameUpperCamel}> list = ${doNameUpperCamel ? uncap_first}Dao.findList(transformToDomain(${doNameUpperCamel ? uncap_first}DTO));
        return Collections.unmodifiableList(transformList(list));
    }
    @Transactional(readOnly = true)
    public ${doNameUpperCamel}DTO getById(String id){
        return transformToDTO(${doNameUpperCamel ? uncap_first}Dao.getById(id));
    }
    @Transactional(readOnly = true)
    public ${doNameUpperCamel}DTO get(${doNameUpperCamel}DTO ${doNameUpperCamel ? uncap_first}DTO){
        return transformToDTO(${doNameUpperCamel ? uncap_first}Dao.get(transformToDomain(${doNameUpperCamel ? uncap_first}DTO)));
    }

    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class, readOnly = false)
    public int insert(${doNameUpperCamel}DTO ${doNameUpperCamel ? uncap_first}DTO){
        //todo
        return 1;
    }

    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class, readOnly = false)
        public int update(${doNameUpperCamel}DTO ${doNameUpperCamel ? uncap_first}DTO){
        //todo
        return 1;
    }

    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class, readOnly = false)
        public void delete(String id){
        ${doNameUpperCamel ? uncap_first}Dao.delete(id);
    }

    @Transactional(readOnly = true)
    public PageInfo<${doNameUpperCamel}DTO> findPage(int pageNum,int pageSize){
        PageHelper.startPage(pageNum, pageSize);
        List<${doNameUpperCamel}> list  = ${doNameUpperCamel ? uncap_first}Dao.findPage();
        return new PageInfo<>(transformList(list));
    }


    private List<${doNameUpperCamel}DTO> transformList(List<${doNameUpperCamel}> ${doNameUpperCamel ? uncap_first}List){
        //todo
         return new ArrayList<${doNameUpperCamel}DTO>();
        }
            private ${doNameUpperCamel}DTO transformToDTO(${doNameUpperCamel} ${doNameUpperCamel ? uncap_first}){
        ${doNameUpperCamel}DTO  ${doNameUpperCamel ? uncap_first}DTO =new ${doNameUpperCamel}DTO();
            //todo
                return ${doNameUpperCamel ? uncap_first}DTO;
            }
                    private ${doNameUpperCamel} transformToDomain(${doNameUpperCamel}DTO ${doNameUpperCamel ? uncap_first}DTO){
                ${doNameUpperCamel}  ${doNameUpperCamel ? uncap_first} =new ${doNameUpperCamel}();
                    //todo
                    return ${doNameUpperCamel ? uncap_first};
                    }
}
