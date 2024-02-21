import { Module } from '@nestjs/common';
import { LineTypeService } from './line_type.service';
import { LineTypeController } from './line_type.controller';
import { LineType } from './entities/line_type.entity';
import { TypeOrmModule } from '@nestjs/typeorm';

@Module({
  imports: [TypeOrmModule.forFeature([LineType])],
  controllers: [LineTypeController],
  providers: [LineTypeService],
})
export class LineTypeModule {}
