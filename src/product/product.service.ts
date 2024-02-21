import { Injectable, NotFoundException } from '@nestjs/common';
import { CreateProductDto } from './dto/create-product.dto';
import { UpdateProductDto } from './dto/update-product.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Product } from './entities/product.entity';

@Injectable()
export class ProductService {
  constructor(
    @InjectRepository(Product)
    private readonly productRepository:
    Repository<Product>){
      
    }

  async create(createProductDto: CreateProductDto) {
    const product = this.productRepository.create(createProductDto);

    return await this.productRepository.save(product);
  }

  async findAll() {
    return await this.productRepository.find({
      relations: {
        product_family: true,
        ueb: true,
      }
    });
  }

  async findOne(id_product: number) {
    return await this.productRepository.findOne({
      where: { id_product }});
  }

  async update(id_product: number, updateProductDto: UpdateProductDto) {
    const product = await this.findOne(id_product);
    if(!product){
      throw new NotFoundException();
    }
    Object.assign(product, updateProductDto);
    return await this.productRepository.save(product);
  }

  async remove(id_product: number) {
    const product = await this.findOne(id_product);
    if(!product){
      throw new NotFoundException();
    }
    return await this.productRepository.remove(product);
  }
}
