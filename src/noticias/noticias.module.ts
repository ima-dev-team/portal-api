import { Module } from '@nestjs/common';
import { NoticiasService } from './noticias.service';
import { NoticiasController } from './noticias.controller';
import { PrismaService } from 'src/prisma/prisma.service';

@Module({
  controllers: [NoticiasController],
  providers: [NoticiasService, PrismaService],
})
export class NoticiasModule {}
