# 저지방이면서 재활용이 가능한 제품의 ID 를 찾기
SELECT PRODUCT_ID 
FROM PRODUCTS
WHERE LOW_FATS = 'Y' AND RECYCLABLE = 'Y'