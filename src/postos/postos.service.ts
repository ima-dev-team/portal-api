import { Injectable } from '@nestjs/common';

import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class PostosService {
  constructor(private prisma: PrismaService) {}

  /* async create(dto: CreatePostoDto) {
    return 'fdd';
  }

  async findAll() {
    const post = await this.prisma.postos.findMany();
    return { post };
  } */

  async findOne(id: number) {
    const posto = await this.prisma.postos.findFirst({
      where: {
        id: id,
      },
    });
    return { posto };
  }

  /*
  update(id: number, updatePostoDto: UpdatePostoDto) {
    return `This action updates a #${id} posto`;
  }

  remove(id: number) {
    return `This action removes a #${id} posto`;
  } */
}
