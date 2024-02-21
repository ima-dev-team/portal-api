/*
  Warnings:

  - You are about to drop the column `posto` on the `posts` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `posts` DROP COLUMN `posto`,
    ADD COLUMN `postoId` INTEGER NULL;

-- AddForeignKey
ALTER TABLE `posts` ADD CONSTRAINT `posts_postoId_fkey` FOREIGN KEY (`postoId`) REFERENCES `postos`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
