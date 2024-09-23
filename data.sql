-- --------------------------------------------------------
-- 主机:                           C:\Users\Vincent\Documents\code\electron-demo\demo.db
-- 服务器版本:                        3.44.0
-- 服务器操作系统:                      
-- HeidiSQL 版本:                  12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES  */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 导出 demo 的数据库结构
CREATE DATABASE IF NOT EXISTS "demo";
;

-- 导出  表 demo.demo 结构
CREATE TABLE IF NOT EXISTS "demo" (
	"time" TEXT NULL DEFAULT NULL,
	"item" TEXT NULL
);

-- 正在导出表  demo.demo 的数据：3 rows
/*!40000 ALTER TABLE "demo" DISABLE KEYS */;
INSERT INTO "demo" ("time", "item") VALUES
	('2024-09-09 17:12:17', 'this is cs50'),
	('2024-09-09 19:53:20', '我叫点点'),
	('2024-09-09 20:25:27', '欢迎曾浩视察');
/*!40000 ALTER TABLE "demo" ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
