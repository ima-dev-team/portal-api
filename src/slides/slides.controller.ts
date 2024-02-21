import { Controller, Get, Param } from '@nestjs/common';
import { SlidesService } from './slides.service';
import { ApiTags } from '@nestjs/swagger';

@ApiTags('slides')
@Controller('slides')
export class SlidesController {
  constructor(private readonly slidesService: SlidesService) {}

  /*  @Post()
  create(@Body() createSlideDto: CreateSlideDto) {
    return this.slidesService.create(createSlideDto);
  }
 */
  @Get(':postoId')
  findAll(@Param('postoId') postoId: string) {
    return this.slidesService.findAllByPosto(+postoId);
  }

  /*   @Get(':id')
  findOne(@Param('id') id: string) {
    return this.slidesService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateSlideDto: UpdateSlideDto) {
    return this.slidesService.update(+id, updateSlideDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.slidesService.remove(+id);
  } */
}
