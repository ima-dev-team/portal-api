import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { CreatePaginaDto } from './dto/create-pagina.dto';
import { UpdatePaginaDto } from './dto/update-pagina.dto';
import { generateSlug } from 'src/helpers/generate-slug';

@Injectable()
export class PaginasService {
  constructor(private prisma: PrismaService) {}

  async create(dto: CreatePaginaDto, postoId: number) {
    const timestamp = Date.now().toString();
    const shortTimestamp = timestamp.substring(timestamp.length - 6);

    const paginas = await this.prisma.paginas.create({
      data: {
        name: dto.name || 'Nova Página',
        content: dto.content,
        css: dto.css,
        slug: generateSlug(`${dto.name || 'Nova Página'}-${shortTimestamp}`),
        postoId: Number(postoId),
      },
    });
    return { paginas };
  }

  async findAllByposto(postoId: number) {
    const paginas = await this.prisma.paginas.findMany({
      where: {
        postoId: postoId,
      },
    });
    return { paginas };
  }

  async findOne(postoId: number, paginasId: number) {
    const paginas = await this.prisma.paginas.findFirst({
      where: {
        id: paginasId,
        postoId: postoId, // Adicione essa condição para filtrar pelo postoId
      },
    });
    return { paginas };
  }

  async update(paginasId: number, updatepaginasDto: UpdatePaginaDto) {
    const paginas = await this.prisma.paginas.findUnique({
      where: {
        id: paginasId,
      },
    });

    if (!paginas) {
      throw new Error(`Página com ID ${paginasId} não encontrada`);
    }
    const updatedpaginas = await this.prisma.paginas.update({
      where: {
        id: paginasId,
      },
      data: {
        ...updatepaginasDto,
      },
    });

    return updatedpaginas;
  }

  remove(id: number) {
    return `This action removes a #${id} pagina`;
  }

  async findOnePage(postoId: number, paginasId: number) {
    const paginas = await this.prisma.paginas.findFirst({
      where: {
        id: paginasId,
        postoId: postoId,
      },
      include: {
        postos: {
          select: {
            title: true,
          },
        },
      },
    });
    return { paginas };
  }

  async findBySlug(postoId: number, slug: string) {
    const pagina = await this.prisma.paginas.findFirst({
      where: {
        slug: slug,
        postoId: postoId,
      },
      include: {
        postos: {
          select: {
            title: true,
          },
        },
      },
    });
    return { pagina };
  }
}
