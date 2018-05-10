package com.company.controller;

import java.util.List;

import com.company.project.core.ApiResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.company.domain.Column;
import com.company.domain.Table;
import com.company.properties.DatasourceProperties;
import com.company.properties.GeneratorProperties;
import com.company.service.GeneratorService;
import com.company.utils.CodeGenerateUtils;

@Controller
public class GeneratorController {

	@Autowired
	private CodeGenerateUtils codeGenerateUtils;
	@Autowired
	private GeneratorProperties generatorProperties;
	@Autowired
	private DatasourceProperties datasourceProperties;
	@Autowired
	private GeneratorService generatorService;

	@GetMapping("/")
	public String gotoGenerator(Model model) {
		model.addAttribute("package", generatorProperties);
		return "generator";
	}

	@GetMapping("/getDatabases")
	@ResponseBody
	public List getDatabases() {
		List databases = generatorService.getDatabases(datasourceProperties.getDatabaseType());
		return databases;
	}

	@GetMapping("/getTables")
	@ResponseBody
	public List getTables( String schemaName) {
		List<Table> tables = generatorService.getTables(datasourceProperties.getDatabaseType(), schemaName);
		return tables;
	}

	@PostMapping(value = "generate")
	@ResponseBody
	public String generate(@RequestBody GeneratorProperties generatorProperties) throws Exception {
		List<Column> columns = generatorService.getColumns(datasourceProperties.getDatabaseType(), generatorProperties.getSchemaName(), generatorProperties.getTableName());
		codeGenerateUtils.generateDoFile(columns, generatorProperties);
		codeGenerateUtils.generateDtoFile(columns, generatorProperties);
		codeGenerateUtils.generateQoFile(columns, generatorProperties);
		codeGenerateUtils.generateControllerFile(columns, generatorProperties);
		codeGenerateUtils.generateServiceFile(columns, generatorProperties);
		codeGenerateUtils.generateDaoFile(columns, generatorProperties);
		codeGenerateUtils.generateMapperFile(columns, generatorProperties);
		codeGenerateUtils.generateControllerImplFile(columns, generatorProperties);
		codeGenerateUtils.generateServiceImplFile(columns, generatorProperties);
		return ApiResponse.success();
	}
}
