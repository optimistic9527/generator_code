package ${basePackage}.${controllerPackage}Impl;


import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;
/**
* ${tableComment}Controller
* @author ${author}
* @date ${date}
*/
@RestController
@Api(tags = "${tableComment}")
@RequestMapping("${baseRequestMapping}")
public class ${doNameUpperCamel}ControllerImpl implements ${doNameUpperCamel}Controller{
    @Resource
    private ${doNameUpperCamel}Service ${doNameUpperCamel ? uncap_first}Service;

    @PostMapping("/add")
    @ApiOperation(value = "添加${tableComment}", notes = "添加${tableComment}")
    public String add(@RequestBody ${doNameUpperCamel}DTO ${doNameUpperCamel ? uncap_first}DTO) {
        ${doNameUpperCamel ? uncap_first}Service.insert(${doNameUpperCamel ? uncap_first}DTO);
        return ApiResponse.success();
    }

    @DeleteMapping("/delete/{id}")
    @ApiOperation(value = "删除${tableComment}", notes = "删除${tableComment}")
	@ApiImplicitParams({
		@ApiImplicitParam(required = true, name = "id", value = "主键ID", paramType = "path", dataType = "String")
	})
    public String delete(@PathVariable("id") String id) {
        ${doNameUpperCamel ? uncap_first}Service.delete(id);
        return ApiResponse.success();
    }

    @PutMapping("/update")
    @ApiOperation(value = "修改${tableComment}", notes = "修改${tableComment}")
    public String update(@RequestBody ${doNameUpperCamel}DTO ${doNameUpperCamel ? uncap_first}DTO) {
        ${doNameUpperCamel ? uncap_first}Service.update(${doNameUpperCamel ? uncap_first}DTO);
        return ApiResponse.success();
    }

    @GetMapping("/detail/{id}")
    @ApiOperation(value = "查询${tableComment}详情", notes = "查询${tableComment}详情")
	@ApiImplicitParams({
		@ApiImplicitParam(required = true, name = "id", value = "主键ID", paramType = "path", dataType = "String")
	})
    public String detail(@PathVariable("id") String id) {
        ${doNameUpperCamel}DTO ${doNameUpperCamel ? uncap_first}DTO = ${doNameUpperCamel ? uncap_first}Service.getById(id);
        return ApiResponse.success(${doNameUpperCamel ? uncap_first}DTO);
    }

    @GetMapping("/listPage")
    @ApiOperation(value = "分页查询${tableComment}", notes = "分页查询${tableComment}")
	@ApiImplicitParams({
		@ApiImplicitParam(required = true, name = "pageSize", value = "每页显示数量", paramType = "query", dataType = "int"),
		@ApiImplicitParam(required = true, name = "pageNum", value = "第几页", paramType = "query", dataType = "int")
	})
    public String listPage(@RequestParam("pageSize") int pageSize,@RequestParam("pageNum") int pageNum) {
        PageInfo<${doNameUpperCamel}DTO> p = ${doNameUpperCamel ? uncap_first}Service.findPage(pageSize,pageNum);
        return ApiResponse.success(p);
    }
}
