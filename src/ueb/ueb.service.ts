import { Injectable, NotFoundException } from '@nestjs/common';
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

    return await this.uebRepository.save(ueb);
  }

  async findAll() {
    return await this.uebRepository.find({
      relations: {
        company: true,
      }
    });
  }

  async findOne(id_ueb: number) {
    return await this.uebRepository.findOne({
      where: { id_ueb }});
  }

  async update(id_ueb: number, updateUebDto: UpdateUebDto) {
    const ueb = await this.findOne(id_ueb);
    if(!ueb){
      throw new NotFoundException();
    }
    Object.assign(ueb, updateUebDto);
    return await this.uebRepository.save(ueb);
  }

  async remove(id_ueb: number) {
    const ueb = await this.findOne(id_ueb);
    if(!ueb){
      throw new NotFoundException();
    }
    return await this.uebRepository.remove(ueb);
  }
}
