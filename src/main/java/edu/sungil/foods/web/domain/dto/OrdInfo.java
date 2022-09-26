package edu.sungil.foods.web.domain.dto;

import lombok.Data;

@Data
public class OrdInfo {
	private int ordNo;
	private String ordDt;
	private int menuNo;
	private String menuNm;
	private int ordQty;
	private int ordAmt;
	private int menuPrc;
	private String ordStat;
}
