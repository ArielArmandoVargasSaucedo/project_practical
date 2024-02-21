import { Batch } from "src/batch/entities/batch.entity";
import { Ueb } from "src/ueb/entities/ueb.entity";
import { Column, Entity, JoinColumn, ManyToOne, OneToMany, PrimaryGeneratedColumn } from "typeorm";

@Entity({ name: 'line_type' })
export class LineType {
    @PrimaryGeneratedColumn()
    id_line_type: number;

    @Column()
    name_line_type: string;

    @Column({ unique: true })
    code_line_type: string;

    @Column({ name: 'id_ueb' })
    id_ueb: number;

    @ManyToOne(() => Ueb, (ueb) => ueb.line_type)
    @JoinColumn({ name: 'id_ueb'})
    ueb: Ueb;

    @OneToMany(()  => Batch, (batch) => batch.line_type)
    batch: Batch;
}
