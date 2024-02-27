import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
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
    try{
      return await this.lineTypeRepository.save(line_type);
    } catch (error) {
      if (error.code === '23505')
        throw new HttpException('El código del tipo de línea ya existe. Por favor, introduzca un código diferente.', HttpStatus.BAD_REQUEST);
      else if(error.code === '23503')
        throw new HttpException('La ueb referenciada no existe. Por favor, introduzca una ueb que exista.', HttpStatus.BAD_REQUEST);
      throw error;
    }
  }

  async findAll() {
    return await this.lineTypeRepository.find({
      relations: ['ueb']
    });
  }

  async findOne(id_line_type: number) {
    const line_type = await this.lineTypeRepository.findOne({
      where: { id_line_type }});
    if (!line_type)
      throw new HttpException('El tipo de línea no existe. Por favor, introduzca un tipo de línea diferente.', HttpStatus.BAD_REQUEST);
    return line_type;
  }

  async update(id_line_type: number, updateLineTypeDto: UpdateLineTypeDto) {
    const line_type = await this.findOne(id_line_type);
    try{
      Object.assign(line_type, updateLineTypeDto);
      return await this.lineTypeRepository.save(line_type);
    } catch (error) {
      if (error.code === '23505')
        throw new HttpException('El código del tipo de línea ya existe. Por favor, introduzca un código diferente.', HttpStatus.BAD_REQUEST);
      else if(error.code === '23503')
        throw new HttpException('La ueb referenciada no existe. Por favor, introduzca una ueb que exista.', HttpStatus.BAD_REQUEST);
      throw error;
    }
  }

  async remove(id_line_type: number) {
    const line_type = await this.findOne(id_line_type);
    return await this.lineTypeRepository.remove(line_type);
  }
}
