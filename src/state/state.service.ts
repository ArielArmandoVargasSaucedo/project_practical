import { Injectable, NotFoundException } from '@nestjs/common';
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

    return await this.stateRepository.save(state);
  }

  async findAll() {
    return await this.stateRepository.find();
  }

  async findOne(id_state: number) {
    return await this.stateRepository.findOne({
      where: { id_state }});
  }

  async update(id_state: number, updateStateDto: UpdateStateDto) {
    const state = await this.findOne(id_state);
    if(!state){
      throw new NotFoundException();
    }
    Object.assign(state, updateStateDto);
    return await this.stateRepository.save(state);
  }

  async remove(id_state: number) {
    const state = await this.findOne(id_state);
    if(!state){
      throw new NotFoundException();
    }
    return await this.stateRepository.remove(state);
  }
}
