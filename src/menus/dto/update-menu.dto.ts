import { ApiProperty } from '@nestjs/swagger';
import { IsInt, IsOptional, IsString } from 'class-validator';

// menu.dto.ts

export class UpdateMenuDto {
  @ApiProperty()
  @IsString()
  title: string;

  @ApiProperty()
  url: string;

  @ApiProperty()
  @IsOptional()
  menuId: number;

  @ApiProperty()
  @IsOptional()
  parentId?: number;

  @IsInt()
  order: number;
}
