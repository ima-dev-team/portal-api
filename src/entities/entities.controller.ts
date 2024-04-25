import { Controller, Get, Param } from '@nestjs/common';
import { EntitiesService } from './entities.service';

@Controller('entities')
export class EntitiesController {
  constructor(private readonly entitiesService: EntitiesService) {}

  @Get(':posto')
  findAll(@Param('posto') posto: string) {
    return this.entitiesService.findAll(+posto);
  }
}
