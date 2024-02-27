import { IsNumber, IsString, Min, MinLength } from 'class-validator'
export class CreateBatchDto {
    @IsString({ message: 'El código del lote debe ser una cadena de texto.' })
    @MinLength(2, { message: 'El código del lote debe tener al menos 2 caracteres.' })
    code_batch: string;

    @IsNumber()
    @Min(1, { message: 'El ID del tipo de línea debe ser un número a partir de uno' })
    id_line_type: number;

    @IsNumber()
    @Min(1, { message: 'El ID del producto debe ser un número a partir de uno' })
    id_product: number;

    @IsNumber()
    @Min(1, { message: 'El ID de la unidad debe ser un número a partir de uno' })
    id_unit: number;
}
