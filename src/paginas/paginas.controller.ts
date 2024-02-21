import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  Post,
  Put,
  Render,
} from '@nestjs/common';
import { ApiTags } from '@nestjs/swagger';
import { CreatePaginaDto } from './dto/create-pagina.dto';
import { UpdatePaginaDto } from './dto/update-pagina.dto';
import { PaginasService } from './paginas.service';

@ApiTags('Paginas')
@Controller('postos/:postoId/paginas')
export class PaginasController {
  constructor(private readonly paginasService: PaginasService) {}

  @Post()
  create(
    @Param('postoId') postoId: string,
    @Body() createPaginaDto: CreatePaginaDto,
  ) {
    return this.paginasService.create(createPaginaDto, +postoId);
  }
  @Get()
  findAll(@Param('postoId') postoId: string) {
    return this.paginasService.findAllByposto(+postoId);
  }

  @Get(':postoId/:paginaId')
  findOne(
    @Param('postoId') postoId: string,
    @Param('paginaId') paginaId: string,
  ) {
    return this.paginasService.findOne(+postoId, +paginaId);
  }
  @Put(':paginaId') // Alterado para ':paginaId'
  update(
    @Param('paginaId') paginaId: string,
    @Body() updatePaginaDtoo: UpdatePaginaDto,
  ) {
    return this.paginasService.update(+paginaId, updatePaginaDtoo);
  }
  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.paginasService.remove(+id);
  }

  @Get(':paginaId')
  @Render('index.hbs')
  findOnePage(
    @Param('postoId') postoId: string,
    @Param('paginaId') paginaId: string,
  ) {
    return this.paginasService.findOnePage(+postoId, +paginaId);
  }

  @Post(':slug')
  @Render('content.hbs')
  findBySlug(@Param('postoId') postoId: string, @Param('slug') slug: string) {
    return this.paginasService.findBySlug(+postoId, slug);
  }
}
