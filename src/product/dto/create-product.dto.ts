import { IsNumber, IsString, Min, MinLength } from 'class-validator'
export class CreateProductDto {
    @IsString({ message: 'El nombre del producto debe ser una cadena de texto.' })
    @MinLength(3, { message: 'El nombre del producto debe tener al menos 3 caracteres.' })
    name_product: string;

    @IsString({ message: 'El código del producto debe ser una cadena de texto.' })
    @MinLength(2, { message: 'El código del producto debe tener al menos 2 caracteres.' })
    code_product: string;

    @IsNumber()
    @Min(1, { message: 'El ID de la familia producto debe ser un número a partir de uno' })
    id_product_family: number;

    @IsNumber()
    @Min(1, { message: 'El ID de la ueb debe ser un número a partir de uno' })
    id_ueb: number;
}
