import { IsNumber, IsString, Min, MinLength } from 'class-validator'
export class CreateUebDto {
    @IsString({ message: 'El nombre de la ueb debe ser una cadena de texto.' })
    @MinLength(3, { message: 'El nombre de la ueb debe tener al menos 3 caracteres.' })
    name_ueb: string;

    @IsNumber()
    @Min(1, { message: 'El ID de la compañía debe ser un número a partir de uno' })
    id_company: number;
}
