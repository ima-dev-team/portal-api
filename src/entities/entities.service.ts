import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class EntitiesService {
  constructor(private prisma: PrismaService) {}
  async findAll(posto: number) {
    const entidades = await this.prisma.entity_and_projects.findMany({
      where: {
        posto: posto,
        section: 'Entidades',
      },
      orderBy: {
        created_at: 'desc',
      },
      skip: 0,
      take: 4,
    });
    return { entidades };
  }
}
