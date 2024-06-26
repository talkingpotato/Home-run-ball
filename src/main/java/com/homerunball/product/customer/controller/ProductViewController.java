package com.homerunball.product.customer.controller;

import com.homerunball.product.customer.domain.ProductViewDto;
import com.homerunball.product.customer.domain.StockViewDto;
import com.homerunball.product.customer.service.ProductViewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductViewController {
    @Autowired
    ProductViewService productViewService;

    @GetMapping("/detail")
    public String item(HttpServletRequest request,
                       Model m) throws Exception {
        String pd_id = request.getParameter("pd_id");
        String pd_clsf_cd = request.getParameter("pd_clsf_cd");

        ProductViewDto prd = productViewService.read(pd_id);
        StockViewDto stkInfo = productViewService.readStkInfo(pd_id);
        StockViewDto stkOptInfo = productViewService.readStkOptInfo(pd_id, pd_clsf_cd);
        List<StockViewDto> listStkOpt = productViewService.getListStkId(pd_id);

        m.addAttribute("prd", prd);
        m.addAttribute("stkInfo", stkInfo);
        m.addAttribute("stkOptInfo", stkOptInfo);
        m.addAttribute("listStkOpt", listStkOpt);
        return "productDetail";
    }
    @GetMapping("/test")
    public String testForm(){
        return "productTest";
    }
     @PostMapping("/test")
     public String goCart(String pd_id,
                          String pd_clsf_cd,
                          Model m) throws Exception {

        StockViewDto stkOptInfo = productViewService.readStkOptInfo(pd_id, pd_clsf_cd);
        List<StockViewDto> listStkOpt = productViewService.getListStkId(pd_id);

         System.out.println("pd_id = " + pd_id);
         System.out.println("pd_clsf_cd = " + pd_clsf_cd);
         System.out.println("listStkOpt.get(0) = " + listStkOpt.get(0).getPd_clsf_cd());

         m.addAttribute("stkOptInfo", stkOptInfo);
        return "productTest";
    }
}

