package com.homerunball.admin.product.service;

import com.homerunball.admin.product.domain.ProductDto;
import com.homerunball.admin.product.dao.ProductDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    ProductDao productDao;

    /* 모든 제품의 수를 센다. */
    @Override
    public int getAllCount() throws Exception {
        return productDao.countAll();
    }

    /* 모든 제품을 삭제한다. */
    @Override
    public int removeAll() throws Exception {
        return productDao.deleteAll();
    }

    /* 지정한 제품 하나를 삭제한다. */
    @Override
    public int remove(String pd_id) throws Exception {
        return productDao.delete(pd_id);
    }

    /* 지정한 제품을 여러 개를 삭제한다. */
    @Override
    public int removeSelectedProduct(List<String> pd_id) throws Exception {
        return productDao.deleteSelected(pd_id);
    }

    /* 제품 하나를 생성한다. */
    @Override
    public int create(ProductDto productDto) throws Exception {
        return productDao.insert(productDto);
    }

    /* 모든 제품을 list에 저장한다. */
    @Override
    public List<ProductDto> getAllProducts() throws Exception {
        return productDao.selectPrdAll();
    }

    /* 진열되지 않는 모든 제품을 list에 저장한다. */
    @Override
    public List<ProductDto> getAllOutProducts() throws Exception {
        return productDao.selectAllOutProduct();
    }

    /* 지정된 제품 하나만을 가져온다. */
    @Override
    public ProductDto getOneProduct(String pd_id) throws Exception {
        ProductDto productDto = productDao.selectPrd(pd_id);
        productDao.increaseHitCnt(pd_id);
        return productDto;
    }

    /* 제품 유형을 기준으로 가장 큰 시리얼 넘버를 찾는다. */
    @Override
    public int findBiggestSerialNumber(String pd_type_cd) throws Exception {
        return productDao.searchBiggestSerialNumber(pd_type_cd);
    }

    /* 제품 유형을 기준으로 몇 개의 제품이 있는지 센다. */
    @Override
    public int countProductType(String pd_type_cd) throws Exception {
        return productDao.countType(pd_type_cd);
    }

    /* 제품의 내용을 수정한다. */
    @Override
    public int modifyContent(Map<String, Object> productMap) throws Exception {
        return productDao.updateContent(productMap);
    }

    /*진열이 제외된 상품을 다시 진열한다.*/
    @Override
    public int showProduct(List<String> pd_id) throws Exception {
        return productDao.updateToShow(pd_id);
    }
}