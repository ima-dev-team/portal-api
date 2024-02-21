import { Body, Controller, Get, Param, Post } from '@nestjs/common';
import { ApiTags } from '@nestjs/swagger';
import { CreateMenuDto } from './dto/create-menu.dto';
import { MenusService } from './menus.service';

@ApiTags('Menus')
@Controller('menus')
export class MenusController {
  constructor(private readonly menusService: MenusService) {}

  @Post(':postoId')
  create(
    @Param('postoId') postoId: string,
    @Body() createMenuDto: CreateMenuDto,
  ) {
    return this.menusService.create(createMenuDto, +postoId);
  }

  @Get(':postoId')
  findAll(@Param('postoId') postoId: string) {
    return this.menusService.findAllByPosto(+postoId);
  }

  /*


  @Patch(':id')
  update(@Param('id') id: string, @Body() updateMenuDto: UpdateMenuDto) {
    return this.menusService.update(+id, updateMenuDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.menusService.remove(+id);
  } */
}
