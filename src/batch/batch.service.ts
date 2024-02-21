import { Injectable, NotFoundException } from '@nestjs/common';
import { CreateBatchDto } from './dto/create-batch.dto';
import { UpdateBatchDto } from './dto/update-batch.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Batch } from './entities/batch.entity';

@Injectable()
export class BatchService {
  constructor(
    @InjectRepository(Batch)
    private readonly batchRepository:
    Repository<Batch>){
      
    }

  async create(createBatchDto: CreateBatchDto) {
    const batch = this.batchRepository.create(createBatchDto);

    return await this.batchRepository.save(batch);
  }

  async findAll() {
    return await this.batchRepository.find({
      relations: {
        line_type: true,
        product: true,
        unit: true,
      }
    });
  }

  async findOne(id_batch: number) {
    return await this.batchRepository.findOne({
      where: { id_batch }});
  }

  async update(id_batch: number, updateBatchDto: UpdateBatchDto) {
    const batch = await this.findOne(id_batch);
    if(!batch){
      throw new NotFoundException();
    }
    Object.assign(batch, updateBatchDto);
    return await this.batchRepository.save(batch);
  }

  async remove(id_batch: number) {
    const batch = await this.findOne(id_batch);
    if(!batch){
      throw new NotFoundException();
    }
    return await this.batchRepository.remove(batch);
  }
}
