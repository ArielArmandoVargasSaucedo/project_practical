import { PartialType } from '@nestjs/mapped-types';
import { CreateLineTypeDto } from './create-line_type.dto';

export class UpdateLineTypeDto extends PartialType(CreateLineTypeDto) {}
