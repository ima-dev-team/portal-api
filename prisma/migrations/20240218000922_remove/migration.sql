/*
  Warnings:

  - You are about to drop the column `scripts` on the `paginas` table. All the data in the column will be lost.
  - You are about to drop the column `styles` on the `paginas` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `paginas` DROP COLUMN `scripts`,
    DROP COLUMN `styles`;
