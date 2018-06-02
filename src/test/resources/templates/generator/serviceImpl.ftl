package ${basePackage}.${servicePackage}Impl;

import ${basePackage}.${daoPackage}.${doNameUpperCamel}DAO;
import ${basePackage}.${doPackage}.${doNameUpperCamel};
import ${basePackage}.${dtoPackage}.${doNameUpperCamel}DTO;
import ${basePackage}.${servicePackage}.${doNameUpperCamel}Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.dozer.DozerBeanMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
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
    @Resource
	private DozerBeanMapper dozerBeanMapper;

    @Transactional(readOnly = true)
    @Override
    public List<${doNameUpperCamel}DTO> findAll(){
        //todo
        return null;
    }
    @Transactional(readOnly = true)
    @Override
    public List<${doNameUpperCamel}DTO> findList(${doNameUpperCamel}DTO ${doNameUpperCamel ? uncap_first}DTO){
        //todo
        return null;
    }
    @Transactional(readOnly = true)
    @Override
    public ${doNameUpperCamel}DTO getById(String id){
        //todo
        return null;
    }

    @Transactional(readOnly = true)
    @Override
    public ${doNameUpperCamel}DTO get(${doNameUpperCamel}DTO ${doNameUpperCamel ? uncap_first}DTO){
        //todo
        return null;
    }

    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class, readOnly = false)
    @Override
    public int insert(${doNameUpperCamel}DTO ${doNameUpperCamel ? uncap_first}DTO){
        //todo
        return 1;
    }

    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class, readOnly = false)
        @Override
        public int update(${doNameUpperCamel}DTO ${doNameUpperCamel ? uncap_first}DTO){
        //todo
        return 1;
    }

    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class, readOnly = false)
    @Override
    public void delete(String id){
        ${doNameUpperCamel ? uncap_first}Dao.delete(id);
    }

    @Transactional(readOnly = true)
    @Override
    public PageInfo<${doNameUpperCamel}DTO> findPage(int pageNum,int pageSize){
        //todo
        PageHelper.startPage(pageNum, pageSize);
        List<${doNameUpperCamel}> list  = ${doNameUpperCamel ? uncap_first}Dao.findPage();
        return null;
    }

}
