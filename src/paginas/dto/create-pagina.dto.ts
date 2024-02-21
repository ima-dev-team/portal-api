import { ApiProperty } from '@nestjs/swagger';

export class CreatePaginaDto {
  @ApiProperty()
  name: string;

  @ApiProperty()
  content: string;

  @ApiProperty()
  css?: string;

  @ApiProperty()
  status?: string;
}
