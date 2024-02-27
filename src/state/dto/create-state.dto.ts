import { IsNumber, IsString, Min, MinLength } from 'class-validator'
export class CreateStateDto {
    @IsString({ message: 'El nombre del estado debe ser una cadena de texto.' })
    @MinLength(3, { message: 'El nombre del estado debe tener al menos 3 caracteres.' })
    name_state: string;

    @IsNumber()
    @Min(1, { message: 'El número de orden del estado debe ser un número a partir de uno' })
    state_order: number;
}
