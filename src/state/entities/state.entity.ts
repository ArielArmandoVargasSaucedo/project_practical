import { Unit } from "src/unit/entities/unit.entity";
import { Column, Entity, OneToMany, PrimaryGeneratedColumn } from "typeorm";

@Entity({ name: 'state' })
export class State {
    @PrimaryGeneratedColumn()
    id_state: number;

    @Column({ unique: true })
    name_state: string;

    @Column({ unique: true })
    state_order: number;

    @OneToMany(()  => Unit, (unit) => unit.state)
    unit: Unit;
}
