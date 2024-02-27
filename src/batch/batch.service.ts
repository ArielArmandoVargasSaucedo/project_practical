import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
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
    try{
      return await this.batchRepository.save(batch);
    } catch (error) {
      if (error.code === '23505')
          throw new HttpException('El código del lote ya existe. Por favor, introduzca un código diferente.', HttpStatus.BAD_REQUEST);
      else if (error.code === '23503') {
        if (error.detail.includes('id_line_type'))
          throw new HttpException('El tipo de línea referenciado no existe. Por favor, introduzca un tipo de línea que exista.', HttpStatus.BAD_REQUEST);
        else if (error.detail.includes('id_product'))
          throw new HttpException('El producto referenciado no existe. Por favor, introduzca un producto que exista.', HttpStatus.BAD_REQUEST);
        else if (error.detail.includes('id_unit'))
          throw new HttpException('La unidad referenciada no existe. Por favor, introduzca una unidad que exista.', HttpStatus.BAD_REQUEST);
      }
      throw error;
    }
  }

  async findAll() {
    return await this.batchRepository.find({
      relations: ['line_type', 'product', 'unit']
    });
  }

  async findOne(id_batch: number) {
    const batch = await this.batchRepository.findOne({
      where: { id_batch }});
    if (!batch)
      throw new HttpException('El lote no existe. Por favor, introduzca un lote diferente.', HttpStatus.BAD_REQUEST);
    return batch;
  }

  async update(id_batch: number, updateBatchDto: UpdateBatchDto) {
    const batch = await this.findOne(id_batch);
    try{
      Object.assign(batch, updateBatchDto);
      return await this.batchRepository.save(batch);
    } catch (error) {
      if (error.code === '23505')
          throw new HttpException('El código del lote ya existe. Por favor, introduzca un código diferente.', HttpStatus.BAD_REQUEST);
      else if (error.code === '23503') {
        if (error.detail.includes('id_line_type'))
          throw new HttpException('El tipo de línea referenciado no existe. Por favor, introduzca un tipo de línea que exista.', HttpStatus.BAD_REQUEST);
        else if (error.detail.includes('id_product'))
          throw new HttpException('El producto referenciado no existe. Por favor, introduzca un producto que exista.', HttpStatus.BAD_REQUEST);
        else if (error.detail.includes('id_unit'))
          throw new HttpException('La unidad referenciada no existe. Por favor, introduzca una unidad que exista.', HttpStatus.BAD_REQUEST);
      }
      throw error;
    }
  }

  async remove(id_batch: number) {
    const batch = await this.findOne(id_batch);
    return await this.batchRepository.remove(batch);
  }
}
