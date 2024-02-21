/*
  Warnings:

  - You are about to drop the column `locations` on the `Menu` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `Menu` table. All the data in the column will be lost.
  - You are about to drop the `MenuItem` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `title` to the `Menu` table without a default value. This is not possible if the table is not empty.
  - Made the column `order` on table `Menu` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE `MenuItem` DROP FOREIGN KEY `MenuItem_menuId_fkey`;

-- DropForeignKey
ALTER TABLE `MenuItem` DROP FOREIGN KEY `MenuItem_parentId_fkey`;

-- AlterTable
ALTER TABLE `Menu` DROP COLUMN `locations`,
    DROP COLUMN `name`,
    ADD COLUMN `parentId` INTEGER NULL,
    ADD COLUMN `title` VARCHAR(191) NOT NULL,
    MODIFY `order` INTEGER NOT NULL;

-- DropTable
DROP TABLE `MenuItem`;

-- AddForeignKey
ALTER TABLE `Menu` ADD CONSTRAINT `Menu_parentId_fkey` FOREIGN KEY (`parentId`) REFERENCES `Menu`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
