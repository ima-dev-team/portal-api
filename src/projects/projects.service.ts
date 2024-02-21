import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class ProjectsService {
  constructor(private prisma: PrismaService) {}
  /*  create(createProjectDto: CreateProjectDto) {
    return 'This action adds a new project';
  o
 */
  async findAll(postoId: number) {
    const projectos = await this.prisma.entity_and_projects.findMany({
      where: {
        postoId: postoId,
      },
      orderBy: {
        created_at: 'desc',
      },
      skip: 0,
      take: 4,
    });
    return { projectos };
  }

  /*   findOne(id: number) {
    return `This action returns a #${id} project`;
  }

  update(id: number, updateProjectDto: UpdateProjectDto) {
    return `This action updates a #${id} project`;
  }

  remove(id: number) {
    return `This action removes a #${id} project`;
  } */
}
