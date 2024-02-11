import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity({ name: 'state' })
export class State {
    @PrimaryGeneratedColumn()
    id_state: number;

    @Column({ unique: true })
    name_state: string;

    @Column({ unique: true })
    state_order: number;
}
