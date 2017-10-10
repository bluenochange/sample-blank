CREATE TABLE `user` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '用户姓名',
  `nick_name` varchar(50) NOT NULL COMMENT '昵称，默认手机号',
  `account` varchar(50) NOT NULL COMMENT '用户的登录账户名',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(50) NOT NULL COMMENT '手机号码',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `register_date` datetime DEFAULT NULL COMMENT '注册日期',
  `age` int(10) DEFAULT NULL COMMENT '年龄',
  `last_login_date` datetime DEFAULT NULL COMMENT '上次登录日期',
  `state` int(11) DEFAULT '1' COMMENT '用户状态',
  `level` int(11) DEFAULT '1' COMMENT '用户等级',
  `asker` int(11) DEFAULT '0' COMMENT '问问题等级，买家信用',
  `answer` int(11) DEFAULT '0' COMMENT '回答问题等级，卖家信用',
  `identity_card` varchar(50) DEFAULT NULL COMMENT '证件号码',
  `identity_type` int(11) DEFAULT NULL COMMENT '证件类型1身份证2护照3其他',
  `alipay` varchar(100) DEFAULT NULL COMMENT '支付宝账号',
  `weixin` varchar(100) DEFAULT NULL COMMENT '微信账号',
  `qq` varchar(50) DEFAULT NULL COMMENT 'qq号',
  `address` varchar(250) DEFAULT NULL COMMENT '地址',
  `avatar` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `birthday` date DEFAULT NULL COMMENT '用户生日',
  `summary` varchar(512) DEFAULT NULL COMMENT '简介',
  `signature` varchar(100) DEFAULT NULL COMMENT '个性签名',
  `title` varchar(100) DEFAULT NULL COMMENT '职称',
  `focus_number` bigint(16) DEFAULT '0' COMMENT '关注数',
  `love_number` bigint(16) DEFAULT '0' COMMENT '点赞数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_user_account` (`account`) USING BTREE,
  UNIQUE KEY `idx_user_mobile` (`mobile`) USING BTREE,
  UNIQUE KEY `idx_user_alipay` (`alipay`) USING BTREE,
  UNIQUE KEY `idx_user_weixin` (`weixin`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';