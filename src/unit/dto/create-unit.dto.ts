import { IsNumber, Min } from 'class-validator'
export class CreateUnitDto {
    @IsNumber()
    @Min(1, { message: 'La cantidad de la unidad debe ser un número a partir de uno' })
    amount: number;

    @IsNumber()
    @Min(1, { message: 'El ID del estado debe ser un número a partir de uno' })
    id_state: number;

    @IsNumber()
    @Min(1, { message: 'El ID del destino debe ser un número a partir de uno' })
    id_destination: number;

    @IsNumber()
    @Min(1, { message: 'El ID del lote debe ser un número a partir de uno' })
    id_batch: number;
}
