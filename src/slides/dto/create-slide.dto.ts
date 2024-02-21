import { IsInt, IsOptional, IsString, IsUrl } from 'class-validator';

export class CreateSlideDto {
  @IsString()
  title: string;

  @IsString()
  cover: string;

  @IsUrl()
  @IsOptional()
  link?: string;

  @IsInt()
  @IsOptional()
  postoId?: number;

  @IsString()
  @IsOptional()
  description?: string;
}
