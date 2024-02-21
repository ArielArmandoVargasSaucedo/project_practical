import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { ConfigModule, ConfigService } from '@nestjs/config';
import { TypeOrmModule } from '@nestjs/typeorm';
import { join } from 'path';
import { CompanyModule } from './company/company.module';
import { StateModule } from './state/state.module';
import { DestinationModule } from './destination/destination.module';
import { ProductFamilyModule } from './product_family/product_family.module';
import { UebModule } from './ueb/ueb.module';
import { LineTypeModule } from './line_type/line_type.module';
import { UnitModule } from './unit/unit.module';
import { ProductModule } from './product/product.module';
import { BatchModule } from './batch/batch.module';

@Module({
  imports: [
    ConfigModule.forRoot(),
    TypeOrmModule.forRootAsync({
      imports: [ConfigModule],
      inject: [ConfigService],
      useFactory: (configService: ConfigService) => ({
        type: 'postgres',
        host: configService.get('DB_HOST'),
        port: +configService.get('DB_PORT'),
        username: configService.get('DB_USERNAME'),
        password: configService.get('DB_PASSWORD'),
        database: configService.get('DB_NAME'),
        entities: [join(process.cwd(), 'dist/**/*.entity.js')],
        synchronize: true,
      }),
    }),
    CompanyModule,
    StateModule,
    DestinationModule,
    ProductFamilyModule,
    UebModule,
    LineTypeModule,
    UnitModule,
    ProductModule,
    BatchModule,
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
