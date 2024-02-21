import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { CreateMenuDto } from './dto/create-menu.dto';

@Injectable()
export class MenusService {
  constructor(private prisma: PrismaService) {}

  async create(dto: CreateMenuDto, postoId: number) {
    const menu = await this.prisma.menu.create({
      data: {
        ...dto,
        postoId: Number(postoId),
      },
    });
    return { menu };
  }

  async findAllByPosto(postoId: number) {
    const menus = await this.prisma.menu.findMany({
      where: {
        postoId: postoId,
      },
    });
    return { menus };
  }

  /* 

  findOne(id: number) {
    return `This action returns a #${id} menu`;
  }

  update(id: number, updateMenuDto: UpdateMenuDto) {
    return `This action updates a #${id} menu`;
  }

  remove(id: number) {
    return `This action removes a #${id} menu`;
  } */
}
