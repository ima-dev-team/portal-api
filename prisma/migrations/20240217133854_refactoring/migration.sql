-- CreateTable
CREATE TABLE `abouts` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `description` LONGTEXT NOT NULL,
    `section` ENUM('SobreNos', 'Atribuicoes', 'Historia', 'Politica') NULL,
    `postoId` INTEGER NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `activity_log` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER UNSIGNED NOT NULL,
    `description` TEXT NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    INDEX `activity_log_FK_1`(`user_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `assignments` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `description` TEXT NOT NULL,
    `postoId` INTEGER NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `configuracoes` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(110) NULL,
    `type` LONGTEXT NULL,
    `section` ENUM('Facebook', 'Youtube', 'UrlMapa', 'Telefone', 'Email', 'Localizacao', 'Link', 'Video', 'Twitter', 'Instagram', 'Linkedin') NOT NULL,
    `postoId` INTEGER NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `contactos` (
    `id` INTEGER NOT NULL,
    `name` VARCHAR(100) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    `phone` VARCHAR(111) NOT NULL,
    `postoId` INTEGER NULL,
    `messagem` LONGTEXT NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `entity_and_projects` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `cover` VARCHAR(255) NULL,
    `title` VARCHAR(200) NULL,
    `postoId` INTEGER NULL,
    `description` TEXT NULL,
    `link` VARCHAR(200) NULL,
    `links` VARCHAR(110) NULL,
    `section` ENUM('Entidades', 'Projectos', 'EducacaoAmbiental', 'Eventos', 'Organizacoes', 'Porcentual') NOT NULL,
    `sectores` VARCHAR(110) NULL,
    `porcentual` VARCHAR(100) NULL,
    `datarealizacao` VARCHAR(110) NULL,
    `edicao` VARCHAR(110) NULL,
    `local` VARCHAR(110) NULL,
    `condicaoAcesso` VARCHAR(110) NULL,
    `promotor` VARCHAR(110) NULL,
    `organizador` VARCHAR(110) NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `galery` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` LONGTEXT NOT NULL,
    `cover` VARCHAR(110) NOT NULL,
    `postoId` INTEGER NULL,
    `link` VARCHAR(110) NULL,
    `section` ENUM('ImagensAngola', 'GaleriaEmbaixadores', 'GaleriaDeActividades', 'Imagens', 'Videos') NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `galery_item` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `id_album` INTEGER NULL,
    `cover` VARCHAR(210) NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `item_menu` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `menus` VARCHAR(100) NOT NULL,
    `postoId` INTEGER NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `item_submenu` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `id_menu` INTEGER NULL,
    `title_menu` VARCHAR(110) NOT NULL,
    `uri` VARCHAR(100) NOT NULL,
    `link` VARCHAR(100) NULL,
    `content` TEXT NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `municipio` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `provincia_id` INTEGER NULL,
    `name` VARCHAR(100) NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `postos` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `sigla` VARCHAR(255) NOT NULL,
    `domain` VARCHAR(255) NULL,
    `cover` VARCHAR(500) NULL,
    `type` ENUM('Consulado', 'Embaixada', 'PostoConsular') NULL,
    `embaixada` INTEGER NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `paginas` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `content` VARCHAR(191) NOT NULL,
    `css` VARCHAR(191) NULL,
    `styles` VARCHAR(191) NULL,
    `scripts` VARCHAR(191) NULL,
    `status` ENUM('rascunho', 'publicado') NOT NULL DEFAULT 'rascunho',
    `postoId` INTEGER NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Menu` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `locations` ENUM('CABECALHO', 'RODAPE', 'BARRA_LATERAL') NOT NULL,
    `postoId` INTEGER NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `MenuItem` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(191) NOT NULL,
    `url` VARCHAR(191) NOT NULL,
    `menuId` INTEGER NOT NULL,
    `parentId` INTEGER NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `posts` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `author` INTEGER UNSIGNED NULL,
    `title` TEXT NULL,
    `uri` TEXT NULL,
    `content` TEXT NULL,
    `cover` TEXT NULL,
    `video` TEXT NULL,
    `views` INTEGER NULL DEFAULT 0,
    `posto` INTEGER NOT NULL,
    `fonte` VARCHAR(110) NULL,
    `status` VARCHAR(20) NOT NULL DEFAULT 'draft',
    `destaque` INTEGER NULL,
    `post_at` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `privacy_and_policy` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `description` TEXT NOT NULL,
    `postoId` INTEGER NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `profiles` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `description` TEXT NOT NULL,
    `data_nomeacao` VARCHAR(110) NULL,
    `photo` VARCHAR(110) NOT NULL,
    `postoId` INTEGER NULL,
    `section` ENUM('PerfilTitular', 'TitularesMinisterios') NOT NULL,
    `cargo` VARCHAR(110) NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `profiles_descriptions` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(200) NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `provincia` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `real_access` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `user_id` INTEGER NULL,
    `access_time` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `user_agent` VARCHAR(255) NULL,
    `ip_address` VARCHAR(50) NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `report_access` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `users` INTEGER NOT NULL DEFAULT 1,
    `views` INTEGER NOT NULL DEFAULT 1,
    `pages` INTEGER NOT NULL DEFAULT 1,
    `postoId` INTEGER NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `report_online` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `user` INTEGER UNSIGNED NULL,
    `ip` VARCHAR(50) NOT NULL DEFAULT '',
    `url` VARCHAR(255) NOT NULL DEFAULT '',
    `agent` VARCHAR(255) NOT NULL DEFAULT '',
    `pages` INTEGER NOT NULL DEFAULT 1,
    `postoId` INTEGER NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `slides` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` TEXT NOT NULL,
    `cover` TEXT NOT NULL,
    `link` TEXT NULL,
    `postoId` INTEGER NULL,
    `description` TEXT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `stats_farming` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `provincia` INTEGER NOT NULL,
    `municipio` INTEGER NOT NULL,
    `comuna` VARCHAR(100) NOT NULL,
    `toneladas` INTEGER NOT NULL,
    `tipos_cultura` VARCHAR(500) NOT NULL,
    `hectares` INTEGER NOT NULL,
    `viveiros` VARCHAR(110) NOT NULL,
    `postoId` INTEGER NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `stories` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `description` TEXT NOT NULL,
    `postoId` INTEGER NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `upload` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `titulo` TEXT NULL,
    `ficheiro` VARCHAR(110) NULL,
    `section` ENUM('PublicacoesEspeciais', 'LegislacaoVigente') NULL DEFAULT 'PublicacoesEspeciais',
    `postoId` INTEGER NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `users` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(255) NOT NULL DEFAULT '',
    `last_name` VARCHAR(255) NOT NULL DEFAULT '',
    `email` VARCHAR(255) NOT NULL DEFAULT '',
    `password` VARCHAR(255) NOT NULL DEFAULT '',
    `level` INTEGER NOT NULL,
    `forget` VARCHAR(255) NULL,
    `phone` VARCHAR(111) NULL,
    `photo` VARCHAR(255) NULL,
    `postoId` INTEGER NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `abouts` ADD CONSTRAINT `abouts_postoId_fkey` FOREIGN KEY (`postoId`) REFERENCES `postos`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `assignments` ADD CONSTRAINT `assignments_postoId_fkey` FOREIGN KEY (`postoId`) REFERENCES `postos`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `configuracoes` ADD CONSTRAINT `configuracoes_postoId_fkey` FOREIGN KEY (`postoId`) REFERENCES `postos`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `contactos` ADD CONSTRAINT `contactos_postoId_fkey` FOREIGN KEY (`postoId`) REFERENCES `postos`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `entity_and_projects` ADD CONSTRAINT `entity_and_projects_postoId_fkey` FOREIGN KEY (`postoId`) REFERENCES `postos`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `galery` ADD CONSTRAINT `galery_postoId_fkey` FOREIGN KEY (`postoId`) REFERENCES `postos`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `item_menu` ADD CONSTRAINT `item_menu_postoId_fkey` FOREIGN KEY (`postoId`) REFERENCES `postos`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `item_submenu` ADD CONSTRAINT `item_submenu_id_menu_fkey` FOREIGN KEY (`id_menu`) REFERENCES `item_menu`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `municipio` ADD CONSTRAINT `municipio_provincia_id_fkey` FOREIGN KEY (`provincia_id`) REFERENCES `provincia`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `paginas` ADD CONSTRAINT `paginas_postoId_fkey` FOREIGN KEY (`postoId`) REFERENCES `postos`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Menu` ADD CONSTRAINT `Menu_postoId_fkey` FOREIGN KEY (`postoId`) REFERENCES `postos`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `MenuItem` ADD CONSTRAINT `MenuItem_menuId_fkey` FOREIGN KEY (`menuId`) REFERENCES `Menu`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `MenuItem` ADD CONSTRAINT `MenuItem_parentId_fkey` FOREIGN KEY (`parentId`) REFERENCES `MenuItem`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `privacy_and_policy` ADD CONSTRAINT `privacy_and_policy_postoId_fkey` FOREIGN KEY (`postoId`) REFERENCES `postos`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `profiles` ADD CONSTRAINT `profiles_postoId_fkey` FOREIGN KEY (`postoId`) REFERENCES `postos`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `report_access` ADD CONSTRAINT `report_access_postoId_fkey` FOREIGN KEY (`postoId`) REFERENCES `postos`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `report_online` ADD CONSTRAINT `report_online_postoId_fkey` FOREIGN KEY (`postoId`) REFERENCES `postos`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `slides` ADD CONSTRAINT `slides_postoId_fkey` FOREIGN KEY (`postoId`) REFERENCES `postos`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `stats_farming` ADD CONSTRAINT `stats_farming_postoId_fkey` FOREIGN KEY (`postoId`) REFERENCES `postos`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `stories` ADD CONSTRAINT `stories_postoId_fkey` FOREIGN KEY (`postoId`) REFERENCES `postos`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `upload` ADD CONSTRAINT `upload_postoId_fkey` FOREIGN KEY (`postoId`) REFERENCES `postos`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `users` ADD CONSTRAINT `users_postoId_fkey` FOREIGN KEY (`postoId`) REFERENCES `postos`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
