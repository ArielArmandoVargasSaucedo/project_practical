import { Unit } from "src/unit/entities/unit.entity";
import { Column, Entity, OneToMany, PrimaryGeneratedColumn } from "typeorm";

@Entity({ name: 'destination' })
export class Destination {
    @PrimaryGeneratedColumn()
    id_destination: number;

    @Column({ unique: true })
    destination_code: string;

    @Column({ unique: true })
    destination_description: string;

    @OneToMany(()  => Unit, (unit) => unit.destination)
    unit: Unit;
}
