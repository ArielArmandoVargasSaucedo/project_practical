import { PartialType } from '@nestjs/mapped-types';
import { CreateProductFamilyDto } from './create-product_family.dto';

export class UpdateProductFamilyDto extends PartialType(CreateProductFamilyDto) {}
