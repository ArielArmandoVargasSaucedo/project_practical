import { IsString, MinLength } from 'class-validator'
export class CreateDestinationDto {
    @IsString({ message: 'El código del destino debe ser una cadena de texto.' })
    @MinLength(1, { message: 'El código del destino debe tener al menos 1 caracter.' })
    destination_code: string;

    @IsString({ message: 'La descripción del destino debe ser una cadena de texto.' })
    @MinLength(3, { message: 'La descripción del destino debe tener al menos 3 caracteres.' })
    destination_description: string;
}
