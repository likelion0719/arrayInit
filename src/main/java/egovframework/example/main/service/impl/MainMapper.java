package egovframework.example.main.service.impl;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Mapper("mainMapper")
public interface MainMapper {

	List<EgovMap> selectSeqNoList() throws Exception;

}
