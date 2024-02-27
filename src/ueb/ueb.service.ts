import { HttpException, HttpStatus, Injectable, NotFoundException } from '@nestjs/common';
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
        throw new HttpException('El nombre de la ueb ya existe. Por favor, introduzca un nombre diferente.', HttpStatus.BAD_REQUEST);
      else if(error.code === '23503')
        throw new HttpException('La compañía referenciada no existe. Por favor, introduzca una compañía que exista.', HttpStatus.BAD_REQUEST);
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
      throw new HttpException('La ueb no existe. Por favor, introduzca una diferente diferente.', HttpStatus.BAD_REQUEST);
    return ueb;
  }

  async update(id_ueb: number, updateUebDto: UpdateUebDto) {
    const ueb = await this.findOne(id_ueb);
    try{
      Object.assign(ueb, updateUebDto);
      return await this.uebRepository.save(ueb);
    } catch (error) {
      if (error.code === '23505')
        throw new HttpException('El nombre de la ueb ya existe. Por favor, introduzca un nombre diferente.', HttpStatus.BAD_REQUEST);
      else if(error.code === '23503')
        throw new HttpException('La compañía referenciada no existe. Por favor, introduzca una compañía que exista.', HttpStatus.BAD_REQUEST);
      throw error;
    }  
  }

  async remove(id_ueb: number) {
    const ueb = await this.findOne(id_ueb);
    return await this.uebRepository.remove(ueb);
  }
}
