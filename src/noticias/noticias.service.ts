import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class NoticiasService {
  constructor(private prisma: PrismaService) {}
  /*   create(createNoticiaDto: CreateNoticiaDto) {
    return 'This action adds a new noticia';
  } */

  async findAll(postoId: number) {
    const noticia = await this.prisma.posts.findMany({
      where: {
        posto: postoId,
      },
      orderBy: {
        post_at: 'desc',
      },
      skip: 0,
      take: 6,
    });
    return { noticia };
  }

  /*   findOne(id: number) {
    return `This action returns a #${id} noticia`;
  }

  update(id: number, updateNoticiaDto: UpdateNoticiaDto) {
    return `This action updates a #${id} noticia`;
  }

  remove(id: number) {
    return `This action removes a #${id} noticia`;
  } */
}
