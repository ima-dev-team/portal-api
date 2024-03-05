import { PartialType } from '@nestjs/swagger';
import { CreateBuapDto } from './create-buap.dto';

export class UpdateBuapDto extends PartialType(CreateBuapDto) {}
