import { Controller, Get, Param } from '@nestjs/common';
import { BuapService } from './buaps.service';

@Controller('buaps')
export class BuapsController {
  constructor(private readonly buapService: BuapService) {}

  /*  @Post()
  create(@Body() createBuapDto: CreateBuapDto) {
    return this.buapsService.create(createBuapDto);
  } */

  @Get(':postoId')
  findAll(@Param('postoId') postoId: string) {
    return this.buapService.findAll(+postoId);
  }

  /*  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.buapsService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateBuapDto: UpdateBuapDto) {
    return this.buapsService.update(+id, updateBuapDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.buapsService.remove(+id);
  } */
}
