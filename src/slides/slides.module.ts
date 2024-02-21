import { Module } from '@nestjs/common';
import { SlidesService } from './slides.service';
import { SlidesController } from './slides.controller';
import { PrismaService } from 'src/prisma/prisma.service';

@Module({
  controllers: [SlidesController],
  providers: [SlidesService, PrismaService],
})
export class SlidesModule {}
