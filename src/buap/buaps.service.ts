import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class BuapService {
  constructor(private prisma: PrismaService) {}

  /*   create(createBuapDto: CreateBuapDto) {
    return 'This action adds a new buap';
  }
 */

  async findAll(postoId: number) {
    const buaps = await this.prisma.buaps.findMany({
      where: {
        posto_id: postoId,
      },
      include: {
        municipio: {},
        provincia: {},
      },
      skip: 0,
      take: 6,
    });

    return { buaps };
  }

  /*  findOne(id: number) {
    return `This action returns a #${id} buap`;
  }+postoId

  update(id: number, updateBuapDto: UpdateBuapDto) {
    return `This action updates a #${id} buap`;
  }

  remove(id: number) {
    return `This action removes a #${id} buap`;
  } */
}
