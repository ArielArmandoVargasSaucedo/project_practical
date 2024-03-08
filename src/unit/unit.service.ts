import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
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
    try{
      return await this.unitRepository.save(unit);
    } catch (error) {
      if (error.code === '23503') {
        if (error.detail.includes('id_state'))
          throw new HttpException('El estado referenciado no existe. Por favor, introduzca un estado que exista.', HttpStatus.BAD_REQUEST);
        else if (error.detail.includes('id_destination'))
          throw new HttpException('El destino referenciado no existe. Por favor, introduzca un destino que exista.', HttpStatus.BAD_REQUEST);
        else if (error.detail.includes('id_batch'))
          throw new HttpException('El lote referenciado no existe. Por favor, introduzca un lote que exista.', HttpStatus.BAD_REQUEST);
      }
    }
  }

  async findAll() {
    return await this.unitRepository.find({
      relations: ['state', 'destination', 'batch']
    });
  }

  async findOne(id_unit: number) {
    const unit = await this.unitRepository.findOne({
      where: { id_unit }});
    if (!unit)
      throw new HttpException('La unidad no existe. Por favor, introduzca una unidad diferente.', HttpStatus.BAD_REQUEST);
    return unit;
  }

  async update(id_unit: number, updateUnitDto: UpdateUnitDto) {
    const unit = await this.findOne(id_unit);
    try{
      Object.assign(unit, updateUnitDto);
      return await this.unitRepository.save(unit);
    } catch (error) {
      if (error.code === '23503') {
        if (error.detail.includes('id_state'))
          throw new HttpException('El estado referenciado no existe. Por favor, introduzca un estado que exista.', HttpStatus.BAD_REQUEST);
        else if (error.detail.includes('id_destination'))
          throw new HttpException('El destino referenciado no existe. Por favor, introduzca un destino que exista.', HttpStatus.BAD_REQUEST);
        else if (error.detail.includes('id_batch'))
          throw new HttpException('El lote referenciado no existe. Por favor, introduzca un lote que exista.', HttpStatus.BAD_REQUEST);
      }
    }
  }

  async remove(id_unit: number) {
    const unit = await this.findOne(id_unit);
    return await this.unitRepository.remove(unit);
  }
}
