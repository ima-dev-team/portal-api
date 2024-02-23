import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class ConfigsService {
  constructor(private prisma: PrismaService) {}
  /*  create(createConfigDto: CreateConfigDto) {
    return 'This action adds a new config';
  } */

  async findAll(postoId: number) {
    const config = await this.prisma.configuracoes.findMany({
      where: {
        postoId: postoId,
      },
    });
    return { config };
  }

  /*   findOne(id: number) {
    return `This action returns a #${id} config`;
  }

  update(id: number, updateConfigDto: UpdateConfigDto) {
    return `This action updates a #${id} config`;
  }

  remove(id: number) {
    return `This action removes a #${id} config`;
  } */
}
