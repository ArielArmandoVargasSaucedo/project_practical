import { Batch } from "src/batch/entities/batch.entity";
import { Destination } from "src/destination/entities/destination.entity";
import { State } from "src/state/entities/state.entity";
import { Column, Entity, JoinColumn, ManyToOne, PrimaryGeneratedColumn } from "typeorm";

@Entity({ name: 'unit' })
export class Unit {
    @PrimaryGeneratedColumn()
    id_unit: number;

    @Column()
    amount: number;

    @Column({ name: 'id_state' })
    id_state: number;

    @ManyToOne(() => State, (state) => state.unit)
    @JoinColumn({ name: 'id_state'})
    state: State;

    @Column({ name: 'id_destination' })
    id_destination: number;

    @ManyToOne(() => Destination, (destination) => destination.unit)
    @JoinColumn({ name: 'id_destination'})
    destination: Destination;

    
    @Column({ name: 'id_batch' })
    id_batch: number;

    @ManyToOne(() => Batch, (batch) => batch.unit)
    @JoinColumn({ name: 'id_batch'})
    batch: Batch;
}
