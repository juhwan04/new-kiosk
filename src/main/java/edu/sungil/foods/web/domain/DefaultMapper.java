package edu.sungil.foods.web.domain;

import org.apache.ibatis.annotations.Mapper;

import edu.sungil.foods.web.domain.dto.OrdInfo;
import edu.sungil.foods.web.domain.dto.UserInfo;

@Mapper
public interface DefaultMapper {
	String selectName();

	UserInfo selectUserInfo(Long userNo);
	
	void addUserInfo(UserInfo userInfo);

	void StatUpdateUserInfo(OrdInfo ordInfo);
}
