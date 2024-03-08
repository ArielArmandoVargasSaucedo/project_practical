import { IsString, MinLength } from 'class-validator';
export class CreateCompanyDto {
    
    @IsString({ message: 'El nombre de la empresa debe ser una cadena de texto.' })
    @MinLength(3, { message: 'El nombre de la empresa debe tener al menos  3 caracteres.' })
    name_company: string;
}
