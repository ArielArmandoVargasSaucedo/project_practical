import { Module } from '@nestjs/common';
import { UebService } from './ueb.service';
import { UebController } from './ueb.controller';
import { Ueb } from './entities/ueb.entity';
import { TypeOrmModule } from '@nestjs/typeorm';

@Module({
  imports: [TypeOrmModule.forFeature([Ueb])],
  controllers: [UebController],
  providers: [UebService],
})
export class UebModule {}
