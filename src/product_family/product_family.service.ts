import { Injectable, NotFoundException } from '@nestjs/common';
import { CreateProductFamilyDto } from './dto/create-product_family.dto';
import { UpdateProductFamilyDto } from './dto/update-product_family.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { Product_family } from './entities/product_family.entity';
import { Repository } from 'typeorm';

@Injectable()
export class ProductFamilyService {
  constructor(
    @InjectRepository(Product_family)
    private readonly productFamilyRepository:
    Repository<Product_family>){
      
    }

  async create(createProductFamilyDto: CreateProductFamilyDto) {
    const product_family = this.productFamilyRepository.create(createProductFamilyDto);

    return await this.productFamilyRepository.save(product_family);
  }

  async findAll() {
    return await this.productFamilyRepository.find({
      relations: {
        company: true,
      }
    });
  }

  async findOne(id_product_family: number) {
    return await this.productFamilyRepository.findOne({
      where: { id_product_family }});
  }

  async update(id_product_family: number, updateProductFamilyDto: UpdateProductFamilyDto) {
    const product_family = await this.findOne(id_product_family);
    if(!product_family){
      throw new NotFoundException();
    }
    Object.assign(product_family, updateProductFamilyDto);
    return await this.productFamilyRepository.save(product_family);
  }

  async remove(id_product_family: number) {
    const product_family = await this.findOne(id_product_family);
    if(!product_family){
      throw new NotFoundException();
    }
    return await this.productFamilyRepository.remove(product_family);
  }
}
