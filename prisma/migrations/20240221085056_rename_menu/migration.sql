/*
  Warnings:

  - You are about to drop the `Menu` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `Menu` DROP FOREIGN KEY `Menu_parentId_fkey`;

-- DropForeignKey
ALTER TABLE `Menu` DROP FOREIGN KEY `Menu_postoId_fkey`;

-- DropTable
DROP TABLE `Menu`;

-- CreateTable
CREATE TABLE `menu` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(191) NOT NULL,
    `url` VARCHAR(191) NULL,
    `parentId` INTEGER NULL,
    `postoId` INTEGER NULL,
    `order` INTEGER NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `menu` ADD CONSTRAINT `menu_postoId_fkey` FOREIGN KEY (`postoId`) REFERENCES `postos`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `menu` ADD CONSTRAINT `menu_parentId_fkey` FOREIGN KEY (`parentId`) REFERENCES `menu`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
