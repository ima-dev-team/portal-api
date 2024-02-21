import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class ProfilesService {
  constructor(private prisma: PrismaService) {}
  /*   create(createProfileDto: CreateProfileDto) {
    return 'This action adds a new profile';
  }
 */
  async findAll(postoId: number) {
    const perfil = await this.prisma.profiles.findMany({
      where: {
        postoId: postoId,
        AND: [
          {
            section: 'PerfilTitular',
          },
        ],
      },
    });
    return { perfil };
  }

  /*   findOne(id: number) {
    return `This action returns a #${id} profile`;
  }

  update(id: number, updateProfileDto: UpdateProfileDto) {
    return `This action updates a #${id} profile`;
  }

  remove(id: number) {
    return `This action removes a #${id} profile`;
  } */
}
