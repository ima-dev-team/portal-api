import { Module } from '@nestjs/common';
import { PostosModule } from './postos/postos.module';
import { PaginasModule } from './paginas/paginas.module';
import { MenusModule } from './menus/menus.module';
import { ConfigModule } from '@nestjs/config';
import { ServeStaticModule } from '@nestjs/serve-static';
import { join } from 'path';
import { SlidesModule } from './slides/slides.module';
import { NoticiasModule } from './noticias/noticias.module';
import { ProjectsModule } from './projects/projects.module';
import { ProfilesModule } from './profiles/profiles.module';
import { ConfigsModule } from './configs/configs.module';
import { BuapsModule } from './buap/buaps.module';
import { EntitiesModule } from './entities/entities.module';

@Module({
  imports: [
    ConfigModule.forRoot({
      isGlobal: true,
    }),
    ServeStaticModule.forRoot({
      rootPath: join(__dirname, '..', 'public'),
    }),
    PostosModule,
    PaginasModule,
    MenusModule,
    SlidesModule,
    NoticiasModule,
    ProjectsModule,
    ProfilesModule,
    ConfigsModule,
    BuapsModule,
    EntitiesModule,
  ],
})
export class AppModule {}
