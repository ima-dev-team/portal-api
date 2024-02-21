import { Controller, Get, Param } from '@nestjs/common';
import { PostosService } from './postos.service';

@Controller('postos')
export class PostosController {
  constructor(private readonly postosService: PostosService) {}

  /*  @Post()
  create(@Body() createPostoDto: CreatePostoDto) {
    return this.postosService.create(createPostoDto);
  }
 */
  /*     @Get()
  findAll() {
    return this.postosService.findAll();
  } */

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.postosService.findOne(+id);
  }

  /* 

  @Patch(':id')
  update(@Param('id') id: string, @Body() updatePostoDto: UpdatePostoDto) {
    return this.postosService.update(+id, updatePostoDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.postosService.remove(+id);
  } */
}
