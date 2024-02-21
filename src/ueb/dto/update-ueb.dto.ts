import { PartialType } from '@nestjs/mapped-types';
import { CreateUebDto } from './create-ueb.dto';

export class UpdateUebDto extends PartialType(CreateUebDto) {}
