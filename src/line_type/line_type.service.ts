import { Injectable, NotFoundException } from '@nestjs/common';
import { CreateLineTypeDto } from './dto/create-line_type.dto';
import { UpdateLineTypeDto } from './dto/update-line_type.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { LineType } from './entities/line_type.entity';

@Injectable()
export class LineTypeService {
  constructor(
    @InjectRepository(LineType)
    private readonly lineTypeRepository:
    Repository<LineType>){
      
    }

  async create(createLineTypeDto: CreateLineTypeDto) {
    const line_type = this.lineTypeRepository.create(createLineTypeDto);

    return await this.lineTypeRepository.save(line_type);
  }

  async findAll() {
    return await this.lineTypeRepository.find({
      relations: {
        ueb: true,
      }
    });
  }

  async findOne(id_line_type: number) {
    return await this.lineTypeRepository.findOne({
      where: { id_line_type}});
  }

  async update(id_line_type: number, updateLineTypeDto: UpdateLineTypeDto) {
    const line_type = await this.findOne(id_line_type);
    if(!line_type){
      throw new NotFoundException();
    }
    Object.assign(line_type, updateLineTypeDto);
    return await this.lineTypeRepository.save(line_type);
  }

  async remove(id_line_type: number) {
    const line_type = await this.findOne(id_line_type);
    if(!line_type){
      throw new NotFoundException();
    }
    return await this.lineTypeRepository.remove(line_type);
  }
}
