import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity({ name: 'company' })
export class Company {
    @PrimaryGeneratedColumn()
    id_company: number;

    @Column({ unique: true })
    name_company: string;
}
