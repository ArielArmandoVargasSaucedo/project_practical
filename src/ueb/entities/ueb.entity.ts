import { Company } from "src/company/entities/company.entity";
import { LineType } from "src/line_type/entities/line_type.entity";
import { Product } from "src/product/entities/product.entity";
import { Column, Entity, JoinColumn, ManyToOne, OneToMany, PrimaryGeneratedColumn } from "typeorm";

@Entity({ name: 'ueb' })
export class Ueb {
    @PrimaryGeneratedColumn()
    id_ueb: number;

    @Column({ unique: true })
    name_ueb: string;

    @Column({ name: 'id_company'})
    id_company: number;

    @ManyToOne(() => Company, (comapny) => comapny.ueb)
    @JoinColumn({ name: 'id_company'})
    company: Company;

    @OneToMany(()  => LineType, (line_type) => line_type.ueb)
    line_type: LineType;

    @OneToMany(()  => Product, (product) => product.ueb)
    product: Product;
}