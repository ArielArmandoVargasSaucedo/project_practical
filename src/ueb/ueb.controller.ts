import { Controller, Get, Post, Body, Patch, Param, Delete, ValidationPipe } from '@nestjs/common';
import { UebService } from './ueb.service';
import { CreateUebDto } from './dto/create-ueb.dto';
import { UpdateUebDto } from './dto/update-ueb.dto';

@Controller('ueb')
export class UebController {
  constructor(private readonly uebService: UebService) {}

  @Post()
  create(@Body(new ValidationPipe()) createUebDto: CreateUebDto) {
    return this.uebService.create(createUebDto);
  }

  @Get()
  findAll() {
    return this.uebService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.uebService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body(new ValidationPipe()) updateUebDto: UpdateUebDto) {
    return this.uebService.update(+id, updateUebDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.uebService.remove(+id);
  }
}
