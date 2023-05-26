-- 在saleNo字段上创建唯一索引

ALTER TABLE seller ADD UNIQUE (saleNo);

-- 在saleName字段上创建普通索引

CREATE INDEX idx_seller_saleName ON seller(saleName);

-- 为sex字段设置默认值“男”

ALTER TABLE seller ALTER COLUMN sex SET DEFAULT '男';

-- 在customerNo字段上创建唯一索引

ALTER TABLE customer ADD UNIQUE INDEX idx_customerNo (customerNo);

-- 在CompanyName字段上创建唯一索引

ALTER TABLE customer ADD UNIQUE INDEX idx_CompanyName (CompanyName);

-- 创建外键约束

ALTER TABLE product
ADD
    CONSTRAINT fk_product_categoryId FOREIGN KEY (categoryId) REFERENCES category(id);

-- 创建唯一索引

CREATE UNIQUE INDEX idx_product_productNo ON product(productNo);

ALTER TABLE orders
ADD
    CONSTRAINT FK_orders_customerId FOREIGN KEY (customerId) REFERENCES customer(id),
ADD
    CONSTRAINT FK_orders_saleId FOREIGN KEY (saleId) REFERENCES seller(id);

-- 创建唯一索引

CREATE UNIQUE INDEX order_detail_idx ON orderDetail (orderId, productId);

-- 创建外键约束

ALTER TABLE orderDetail
ADD
    CONSTRAINT fk_productId FOREIGN KEY (productId) REFERENCES product (id);