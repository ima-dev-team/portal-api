import { Module } from '@nestjs/common';
import { PaginasService } from './paginas.service';
import { PaginasController } from './paginas.controller';
import { PrismaService } from 'src/prisma/prisma.service';

@Module({
  controllers: [PaginasController],
  providers: [PaginasService, PrismaService],
})
export class PaginasModule {}
