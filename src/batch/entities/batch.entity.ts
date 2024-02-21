import { LineType } from "src/line_type/entities/line_type.entity";
import { Product } from "src/product/entities/product.entity";
import { Unit } from "src/unit/entities/unit.entity";
import { Column, Entity, JoinColumn, ManyToOne, PrimaryGeneratedColumn } from "typeorm";

@Entity({ name: 'batch' })
export class Batch {
    @PrimaryGeneratedColumn()
    id_batch: number;

    @Column({ unique: true })
    code_batch: string;

    @Column({ name: 'id_line_type' })
    id_line_type: number;

    @ManyToOne(() => LineType, (line_type) => line_type.batch)
    @JoinColumn({ name: 'id_line_type'})
    line_type: LineType;

    @Column({ name: 'id_product' })
    id_product: number;

    @ManyToOne(() => Product, (product) => product.batch)
    @JoinColumn({ name: 'id_product'})
    product: Product;

    @Column({ name: 'id_unit' })
    id_unit: number;

    @ManyToOne(() => Unit, (unit) => unit.batch)
    @JoinColumn({ name: 'id_unit'})
    unit: Unit;
}
