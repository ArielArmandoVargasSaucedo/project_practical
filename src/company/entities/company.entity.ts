import { Product_family } from "src/product_family/entities/product_family.entity";
import { Ueb } from "src/ueb/entities/ueb.entity";
import { Column, Entity, OneToMany, PrimaryGeneratedColumn } from "typeorm";

@Entity({ name: 'company' })
export class Company {
    @PrimaryGeneratedColumn()
    id_company: number;

    @Column({ unique: true })
    name_company: string;

    @OneToMany(()  => Product_family, (product_family) => product_family.company)
    product_family: Product_family;

    @OneToMany(()  => Ueb, (ueb) => ueb.company)
    ueb: Ueb;
}
