import { Injectable, NotFoundException } from '@nestjs/common';
import { CreateDestinationDto } from './dto/create-destination.dto';
import { UpdateDestinationDto } from './dto/update-destination.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { Destination } from './entities/destination.entity';
import { Repository } from 'typeorm';

@Injectable()
export class DestinationService {
  constructor(
    @InjectRepository(Destination)
    private readonly destinationRepository:
    Repository<Destination>){
      
    }

  async create(createDestinationDto: CreateDestinationDto) {
    const destination = this.destinationRepository.create(createDestinationDto);

    return await this.destinationRepository.save(destination);
  }

  async findAll() {
    return await this.destinationRepository.find();
  }

  async findOne(id_destination: number) {
    return await this.destinationRepository.findOne({
      where: { id_destination }});
  }

  async update(id_destination: number, updateDestinationDto: UpdateDestinationDto) {
    const destination = await this.findOne(id_destination);
    if(!destination){
      throw new NotFoundException();
    }
    Object.assign(destination, updateDestinationDto);
    return await this.destinationRepository.save(destination);
  }

  async remove(id_destination: number) {
    const destination = await this.findOne(id_destination);
    if(!destination){
      throw new NotFoundException();
    }
    return await this.destinationRepository.remove(destination);
  }
}
