import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class SlidesService {
  constructor(private prisma: PrismaService) {}

  /*   create(createSlideDto: CreateSlideDto) {
    return 'This action adds a new slide';
  } */

  async findAllByPosto(postoId: number) {
    const slide = await this.prisma.slides.findMany({
      where: {
        postoId: postoId,
      },
      orderBy: {
        created_at: 'desc',
      },
    });
    return { slide };
  }

  /*   findOne(id: number) {
    return `This action returns a #${id} slide`;
  }

  update(id: number, updateSlideDto: UpdateSlideDto) {
    return `This action updates a #${id} slide`;
  }

  remove(id: number) {
    return `This action removes a #${id} slide`;
  } */
}
