/*
  Warnings:

  - You are about to drop the `item_menu` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `item_submenu` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `item_menu` DROP FOREIGN KEY `item_menu_postoId_fkey`;

-- DropForeignKey
ALTER TABLE `item_submenu` DROP FOREIGN KEY `item_submenu_id_menu_fkey`;

-- DropTable
DROP TABLE `item_menu`;

-- DropTable
DROP TABLE `item_submenu`;
