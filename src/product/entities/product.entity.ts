import { Batch } from "src/batch/entities/batch.entity";
import { Product_family } from "src/product_family/entities/product_family.entity";
import { Ueb } from "src/ueb/entities/ueb.entity";
import { Column, Entity, JoinColumn, ManyToOne, OneToMany, PrimaryGeneratedColumn } from "typeorm";

@Entity({ name: 'product' })
export class Product {
    @PrimaryGeneratedColumn()
    id_product: number;

    @Column()
    name_product: string;

    @Column({ unique: true })
    code_product: string;

    @Column({ name: 'id_product_family' })
    id_product_family: number;

    @ManyToOne(() => Product_family, (product_family) => product_family.product)
    @JoinColumn({ name: 'id_product_family'})
    product_family: Product_family;

    @Column({ name: 'id_ueb' })
    id_ueb: number;

    @ManyToOne(() => Ueb, (ueb) => ueb.product)
    @JoinColumn({ name: 'id_ueb'})
    ueb: Ueb;

    @OneToMany(()  => Batch, (batch) => batch.product)
    batch: Batch;
}
