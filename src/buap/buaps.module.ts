import { Module } from '@nestjs/common';
import { BuapService } from './buaps.service';
import { BuapsController } from './buaps.controller';
import { PrismaService } from 'src/prisma/prisma.service';

@Module({
  controllers: [BuapsController],
  providers: [BuapService, PrismaService],
})
export class BuapsModule {}
