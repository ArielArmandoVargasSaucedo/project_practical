import { HttpException, HttpStatus, Injectable, NotFoundException } from '@nestjs/common';
import { CreateStateDto } from './dto/create-state.dto';
import { UpdateStateDto } from './dto/update-state.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { State } from './entities/state.entity';
import { Repository } from 'typeorm';

@Injectable()
export class StateService {
  constructor(
    @InjectRepository(State)
    private readonly stateRepository:
    Repository<State>){
      
    }

  async create(createStateDto: CreateStateDto) {
    const state = this.stateRepository.create(createStateDto);
    try{
      return await this.stateRepository.save(state);
    } catch (error) {
      if (error.code === '23505') {
        if (error.detail.includes('name_state'))
          throw new HttpException('El nombre del estado ya existe. Por favor, introduzca un nombre diferente.', HttpStatus.BAD_REQUEST);
        else if (error.detail.includes('state_order'))
          throw new HttpException('El número de orden del estado ya existe. Por favor, introduzca un número de orden diferente.', HttpStatus.BAD_REQUEST);
      }
      throw error;
    } 
  }

  async findAll() {
    return await this.stateRepository.find();
  }

  async findOne(id_state: number) {
    const state = await this.stateRepository.findOne({
      where: { id_state }});
    if (!state)
      throw new HttpException('El estado no existe. Por favor, introduzca un estado diferente.', HttpStatus.BAD_REQUEST);
    return state;
  }

  async update(id_state: number, updateStateDto: UpdateStateDto) {
    const state = await this.findOne(id_state);
    try{
      Object.assign(state, updateStateDto);
      return await this.stateRepository.save(state);
    } catch (error) {
      if (error.code === '23505') {
        if (error.detail.includes('name_state'))
          throw new HttpException('El nombre del estado ya existe. Por favor, introduzca un nombre diferente.', HttpStatus.BAD_REQUEST);
        else if (error.detail.includes('state_order'))
          throw new HttpException('El número de orden del estado ya existe. Por favor, introduzca un número de orden diferente.', HttpStatus.BAD_REQUEST);
      }
      throw error;
    } 
    
  }

  async remove(id_state: number) {
    const state = await this.findOne(id_state);
    return await this.stateRepository.remove(state);
  }
}
