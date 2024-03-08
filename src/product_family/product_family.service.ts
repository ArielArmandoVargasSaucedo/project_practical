import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
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
    try{
      return await this.productFamilyRepository.save(product_family);
    } catch (error) {
      if (error.code === '23505')
        throw new HttpException('El nombre de la familia de producto ya existe. Por favor, introduzca un nombre diferente.', HttpStatus.BAD_REQUEST);
      else if(error.code === '23503')
        throw new HttpException('La empresa referenciada no existe. Por favor, introduzca una empresa que exista.', HttpStatus.BAD_REQUEST);
      throw error;
    }  
  }

  async findAll() {
    return await this.productFamilyRepository.find({
      relations: ['company']
    });
  }

  async findOne(id_product_family: number) {
    const product_family = await this.productFamilyRepository.findOne({
      where: { id_product_family }});
    if (!product_family)
      throw new HttpException('La familia de producto no existe. Por favor, introduzca una familia de producto diferente.', HttpStatus.BAD_REQUEST);
    return product_family;
  }

  async update(id_product_family: number, updateProductFamilyDto: UpdateProductFamilyDto) {
    const product_family = await this.findOne(id_product_family);
    try{
      Object.assign(product_family, updateProductFamilyDto);
      return await this.productFamilyRepository.save(product_family);
    } catch (error) {
      if (error.code === '23505')
        throw new HttpException('El nombre de la familia de producto ya existe. Por favor, introduzca un nombre diferente.', HttpStatus.BAD_REQUEST);
      else if(error.code === '23503')
        throw new HttpException('La empresa referenciada no existe. Por favor, introduzca una empresa que exista.', HttpStatus.BAD_REQUEST);
      throw error;
    } 
  }

  async remove(id_product_family: number) {
    const product_family = await this.findOne(id_product_family);
    try{
      return await this.productFamilyRepository.remove(product_family);
    } catch (error) {
      if (error.code === '23503')
        throw new HttpException('El producto de familia seleccionado no puede ser eliminado porque es referenciado por un producto.', HttpStatus.BAD_REQUEST);
      throw error;
    }
  }
}
