import { IsNumber, IsString, Min, MinLength } from 'class-validator'
export class CreateUebDto {
    @IsString({ message: 'El nombre de la UEB debe ser una cadena de texto.' })
    @MinLength(2, { message: 'El nombre de la UEB debe tener al menos 2 caracteres.' })
    name_ueb: string;

    @IsNumber()
    @Min(1, { message: 'El ID de la empresa debe ser un número a partir de uno' })
    id_company: number;
}
