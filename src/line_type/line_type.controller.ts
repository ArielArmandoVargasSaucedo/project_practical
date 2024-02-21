import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { LineTypeService } from './line_type.service';
import { CreateLineTypeDto } from './dto/create-line_type.dto';
import { UpdateLineTypeDto } from './dto/update-line_type.dto';

@Controller('line-type')
export class LineTypeController {
  constructor(private readonly lineTypeService: LineTypeService) {}

  @Post()
  create(@Body() createLineTypeDto: CreateLineTypeDto) {
    return this.lineTypeService.create(createLineTypeDto);
  }

  @Get()
  findAll() {
    return this.lineTypeService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.lineTypeService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateLineTypeDto: UpdateLineTypeDto) {
    return this.lineTypeService.update(+id, updateLineTypeDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.lineTypeService.remove(+id);
  }
}
