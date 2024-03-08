import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
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
    try{
      return await this.destinationRepository.save(destination);
    } catch (error) {
      if (error.code === '23505') {
        if (error.detail.includes('destination_code'))
          throw new HttpException('El código del destino ya existe. Por favor, introduzca un código diferente.', HttpStatus.BAD_REQUEST);
        else if (error.detail.includes('destination_description'))
          throw new HttpException('La descripción del destino ya existe. Por favor, introduzca una descripción diferente.', HttpStatus.BAD_REQUEST);
      }
      throw error;
    } 
  }

  async findAll() {
    return await this.destinationRepository.find();
  }

  async findOne(id_destination: number) {
    const destination = await this.destinationRepository.findOne({
      where: { id_destination }});
    if (!destination)
      throw new HttpException('El destino no existe. Por favor, introduzca un destino diferente.', HttpStatus.BAD_REQUEST);
    return destination;
  }

  async update(id_destination: number, updateDestinationDto: UpdateDestinationDto) {
    const destination = await this.findOne(id_destination);
    try{
      Object.assign(destination, updateDestinationDto);
      return await this.destinationRepository.save(destination);
    } catch (error) {
      if (error.code === '23505') {
        if (error.detail.includes('destination_code'))
          throw new HttpException('El código del destino ya existe. Por favor, introduzca un código diferente.', HttpStatus.BAD_REQUEST);
        else if (error.detail.includes('destination_description'))
          throw new HttpException('La descripción del estado ya existe. Por favor, introduzca una descripción diferente.', HttpStatus.BAD_REQUEST);
      }
      throw error;
    }
  }

  async remove(id_destination: number) {
    const destination = await this.findOne(id_destination);
    try{
      return await this.destinationRepository.remove(destination);
    } catch (error) {
      if (error.code === '23503')
        throw new HttpException('El destino seleccionado no puede ser eliminado porque es referenciado por una unidad.', HttpStatus.BAD_REQUEST);
      throw error;
    }
  }
}
