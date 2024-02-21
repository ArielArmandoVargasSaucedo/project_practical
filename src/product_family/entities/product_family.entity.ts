import { Company } from "src/company/entities/company.entity";
import { Product } from "src/product/entities/product.entity";
import { Column, Entity, JoinColumn, ManyToOne, OneToMany, PrimaryGeneratedColumn } from "typeorm";

@Entity({ name: 'product_family' })
export class Product_family {
    @PrimaryGeneratedColumn()
    id_product_family: number;

    @Column({ unique: true })
    name_product_family: string;

    @Column()
    presentation: string;

    @Column()
    format: string;

    @Column({ name: 'id_company' })
    id_company: number;

    @ManyToOne(()  => Company, (company) => company.product_family)
    @JoinColumn({ name: 'id_company' })
    company: Company;

    @OneToMany(()  => Product, (product) => product.product_family)
    product: Product;
}
