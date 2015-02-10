package com.g3g4.controller.action.buyExplain;

import com.g3g4.controller.action.BaseAction;
import com.g3g4.model.BuyExplain;
import com.g3g4.service.IBuyExplainService;

/**
 * 购买说明Action
 * 
 * @author cg
 *
 * @date 2015-02-10
 */
 @SuppressWarnings("serial")
public class BuyExplainAction extends BaseAction {
	private BuyExplain buyExplain = new BuyExplain();
	private IBuyExplainService buyExplainService;
	
	public BuyExplain getBuyExplain() {
		return buyExplain;
	}

	public void setBuyExplain(BuyExplain buyExplain) {
		this.buyExplain = buyExplain;
	}
	public IBuyExplainService getBuyExplainService() {
		return buyExplainService;
	}

	public void setBuyExplainService(IBuyExplainService buyExplainService) {
		this.buyExplainService = buyExplainService;
	}
	
	/**
	 * 购买说明
	 * @return
	 */
	public String execute(){
		buyExplain.setId(1);
		
		BuyExplain buyExplainVO = buyExplainService.selectBuyExplainById(buyExplain);
		this.getRequest().setAttribute("buyExplain", buyExplainVO);
		
		return SUCCESS;
	}
	
}