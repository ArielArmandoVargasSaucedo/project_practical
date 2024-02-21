import { Injectable, NotFoundException } from '@nestjs/common';
import { CreateUnitDto } from './dto/create-unit.dto';
import { UpdateUnitDto } from './dto/update-unit.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Unit } from './entities/unit.entity';

@Injectable()
export class UnitService {
  constructor(
    @InjectRepository(Unit)
    private readonly unitRepository:
    Repository<Unit>){
      
    }

  async create(createUnitDto: CreateUnitDto) {
    const unit = this.unitRepository.create(createUnitDto);

    return await this.unitRepository.save(unit);
  }

  async findAll() {
    return await this.unitRepository.find({
      relations: {
        state: true,
        destination: true,
      }
    });
  }

  async findOne(id_unit: number) {
    return await this.unitRepository.findOne({
      where: { id_unit }});
  }

  async update(id_unit: number, updateUnitDto: UpdateUnitDto) {
    const unit = await this.findOne(id_unit);
    if(!unit){
      throw new NotFoundException();
    }
    Object.assign(unit, updateUnitDto);
    return await this.unitRepository.save(unit);
  }

  async remove(id_unit: number) {
    const unit = await this.findOne(id_unit);
    if(!unit){
      throw new NotFoundException();
    }
    return await this.unitRepository.remove(unit);
  }
}
