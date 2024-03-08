import { IsNumber, IsString, Min, MinLength } from 'class-validator'
export class CreateProductFamilyDto {
    @IsString({ message: 'El nombre de la familia producto debe ser una cadena de texto.' })
    @MinLength(3, { message: 'El nombre de la familia producto debe tener al menos 3 caracteres.' })
    name_product_family: string;

    @IsString({ message: 'La presentación de la familia producto debe ser una cadena de texto.' })
    @MinLength(3, { message: 'La presentación de la familia producto debe tener al menos 3 caracteres.' })
    presentation: string;

    @IsString({ message: 'El formato de la familia producto debe ser una cadena de texto.' })
    @MinLength(2, { message: 'El formato de la familia producto debe tener al menos 2 caracteres.' })
    format: string;

    @IsNumber()
    @Min(1, { message: 'El ID de la empresa debe ser un número a partir de uno' })
    id_company: number;
}
