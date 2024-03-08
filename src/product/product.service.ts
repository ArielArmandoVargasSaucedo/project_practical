import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
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
    try{
      return await this.productRepository.save(product);
    } catch (error) {
      if (error.code === '23505') {
        if (error.detail.includes('name_product'))
          throw new HttpException('El nombre del producto ya existe. Por favor, introduzca un nombre diferente.', HttpStatus.BAD_REQUEST);
        else if (error.detail.includes('code_product'))
          throw new HttpException('El código del producto ya existe. Por favor, introduzca un código diferente.', HttpStatus.BAD_REQUEST);
      }
      else if (error.code === '23503') {
        if (error.detail.includes('id_product_family'))
          throw new HttpException('La familia producto referenciada no existe. Por favor, introduzca una familia producto que exista.', HttpStatus.BAD_REQUEST);
        else if (error.detail.includes('id_ueb'))
          throw new HttpException('La ueb referenciada no existe. Por favor, introduzca una ueb que exista.', HttpStatus.BAD_REQUEST);
      }
      throw error;
    }
  }

  async findAll() {
    return await this.productRepository.find({
      relations: ['product_family', 'ueb']
    });
  }

  async findOne(id_product: number) {
    const product = await this.productRepository.findOne({
      where: { id_product }});
    if (!product)
      throw new HttpException('El producto no existe. Por favor, introduzca un producto diferente.', HttpStatus.BAD_REQUEST);
    return product;
  }

  async update(id_product: number, updateProductDto: UpdateProductDto) {
    const product = await this.findOne(id_product);
    try{
      Object.assign(product, updateProductDto);
      return await this.productRepository.save(product);
    } catch (error) {
      if (error.code === '23505') {
        if (error.detail.includes('name_product'))
          throw new HttpException('El nombre del producto ya existe. Por favor, introduzca un nombre diferente.', HttpStatus.BAD_REQUEST);
        else if (error.detail.includes('code_product'))
          throw new HttpException('El código del producto ya existe. Por favor, introduzca un código diferente.', HttpStatus.BAD_REQUEST);
      }
      else if (error.code === '23503') {
        if (error.detail.includes('id_product_family'))
          throw new HttpException('La familia de producto referenciada no existe. Por favor, introduzca una familia de producto que exista.', HttpStatus.BAD_REQUEST);
        else if (error.detail.includes('id_ueb'))
          throw new HttpException('La UEB referenciada no existe. Por favor, introduzca una UEB que exista.', HttpStatus.BAD_REQUEST);
      }
      throw error;
    }
  }

  async remove(id_product: number) {
    const product = await this.findOne(id_product);
    try{
      return await this.productRepository.remove(product);
    } catch (error) {
      if (error.code === '23503')
        throw new HttpException('El producto seleccionado no puede ser eliminado porque es referenciado por un lote.', HttpStatus.BAD_REQUEST);
      throw error;
    }
  }
}
