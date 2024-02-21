import { Controller, Get, Param } from '@nestjs/common';
import { ProfilesService } from './profiles.service';

@Controller('perfil')
export class ProfilesController {
  constructor(private readonly profilesService: ProfilesService) {}

  /*   @Post()
  create(@Body() createProfileDto: CreateProfileDto) {
    return this.profilesService.create(createProfileDto);
  } */

  @Get(':postoId')
  findAll(@Param('postoId') postoId: string) {
    return this.profilesService.findAll(+postoId);
  }

  /*   @Get(':id')
  findOne(@Param('id') id: string) {
    return this.profilesService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateProfileDto: UpdateProfileDto) {
    return this.profilesService.update(+id, updateProfileDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.profilesService.remove(+id);
  } */
}
