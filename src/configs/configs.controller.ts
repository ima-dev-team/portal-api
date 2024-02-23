import { Controller, Get, Param } from '@nestjs/common';
import { ConfigsService } from './configs.service';

@Controller('configs')
export class ConfigsController {
  constructor(private readonly configsService: ConfigsService) {}

  /*  @Post()
  create(@Body() createConfigDto: CreateConfigDto) {
    return this.configsService.create(createConfigDto);
  } */

  @Get(':postoId')
  findAll(@Param('postoId') postoId: string) {
    return this.configsService.findAll(+postoId);
  }

  /*   @Get(':id')
  findOne(@Param('id') id: string) {
    return this.configsService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateConfigDto: UpdateConfigDto) {
    return this.configsService.update(+id, updateConfigDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.configsService.remove(+id);
  } */
}
