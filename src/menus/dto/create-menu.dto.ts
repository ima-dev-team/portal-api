import { ApiProperty } from '@nestjs/swagger';

import { IsInt, IsOptional, IsString } from 'class-validator';

export class CreateMenuDto {
  @ApiProperty()
  @IsString()
  title: string;

  @ApiProperty()
  url: string;

  @ApiProperty()
  @IsOptional()
  parentId?: number;

  @ApiProperty()
  @IsInt()
  order: number;
}
