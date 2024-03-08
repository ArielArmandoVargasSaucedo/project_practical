import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { CreateUebDto } from './dto/create-ueb.dto';
import { UpdateUebDto } from './dto/update-ueb.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Ueb } from './entities/ueb.entity';

@Injectable()
export class UebService {
  constructor(
    @InjectRepository(Ueb)
    private readonly uebRepository:
    Repository<Ueb>){  
    }

  async create(createUebDto: CreateUebDto) {
    const ueb = this.uebRepository.create(createUebDto);
    try{
      return await this.uebRepository.save(ueb);
    } catch (error) {
      if (error.code === '23505')
        throw new HttpException('El nombre de la UEB ya existe. Por favor, introduzca un nombre diferente.', HttpStatus.BAD_REQUEST);
      else if(error.code === '23503')
        throw new HttpException('La empresa referenciada no existe. Por favor, introduzca una empresa que exista.', HttpStatus.BAD_REQUEST);
      throw error;
    }  
  }

  async findAll() {
    return await this.uebRepository.find({
      relations: ['company']
    });
  }

  async findOne(id_ueb: number) {
    const ueb = await this.uebRepository.findOne({
      where: { id_ueb }});
    if (!ueb)
      throw new HttpException('La UEB no existe. Por favor, introduzca una UEB diferente.', HttpStatus.BAD_REQUEST);
    return ueb;
  }

  async update(id_ueb: number, updateUebDto: UpdateUebDto) {
    const ueb = await this.findOne(id_ueb);
    try{
      Object.assign(ueb, updateUebDto);
      return await this.uebRepository.save(ueb);
    } catch (error) {
      if (error.code === '23505')
        throw new HttpException('El nombre de la UEB ya existe. Por favor, introduzca un nombre diferente.', HttpStatus.BAD_REQUEST);
      else if(error.code === '23503')
        throw new HttpException('La empresa referenciada no existe. Por favor, introduzca una empresa que exista.', HttpStatus.BAD_REQUEST);
      throw error;
    }  
  }

  async remove(id_ueb: number) {
    const ueb = await this.findOne(id_ueb);
    try{
      return await this.uebRepository.remove(ueb);
    } catch (error) {
      if (error.code === '23503')
        throw new HttpException('La UEB seleccionada no puede ser eliminada porque es referenciado por un tipo de línea o por un producto.', HttpStatus.BAD_REQUEST);
      throw error;
    }
  }
}
