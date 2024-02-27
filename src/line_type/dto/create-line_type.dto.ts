import { IsNumber, IsString, Min, MinLength } from 'class-validator'
export class CreateLineTypeDto {
    @IsString({ message: 'El nombre del tipo de línea debe ser una cadena de texto.' })
    @MinLength(3, { message: 'El nombre del tipo de línea debe tener al menos 3 caracteres.' })
    name_line_type: string;

    @IsString({ message: 'El código del tipo de línea debe ser una cadena de texto.' })
    @MinLength(1, { message: 'El código del tipo de línea debe tener al menos 1 caracter.' })
    code_line_type: string;

    @IsNumber()
    @Min(1, { message: 'El ID de la ueb debe ser un número a partir de uno' })
    id_ueb: number;
}
