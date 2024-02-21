import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { ProductFamilyService } from './product_family.service';
import { CreateProductFamilyDto } from './dto/create-product_family.dto';
import { UpdateProductFamilyDto } from './dto/update-product_family.dto';

@Controller('product-family')
export class ProductFamilyController {
  constructor(private readonly productFamilyService: ProductFamilyService) {}

  @Post()
  create(@Body() createProductFamilyDto: CreateProductFamilyDto) {
    return this.productFamilyService.create(createProductFamilyDto);
  }

  @Get()
  findAll() {
    return this.productFamilyService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.productFamilyService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateProductFamilyDto: UpdateProductFamilyDto) {
    return this.productFamilyService.update(+id, updateProductFamilyDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.productFamilyService.remove(+id);
  }
}
