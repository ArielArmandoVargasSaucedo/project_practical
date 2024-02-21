import { Module } from '@nestjs/common';
import { ProductFamilyService } from './product_family.service';
import { ProductFamilyController } from './product_family.controller';
import { Product_family } from './entities/product_family.entity';
import { TypeOrmModule } from '@nestjs/typeorm';

@Module({
  imports: [TypeOrmModule.forFeature([Product_family])],
  controllers: [ProductFamilyController],
  providers: [ProductFamilyService],
})
export class ProductFamilyModule {}
