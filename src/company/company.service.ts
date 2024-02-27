import { HttpException, HttpStatus, Injectable, NotFoundException } from '@nestjs/common';
import { CreateCompanyDto } from './dto/create-company.dto';
import { UpdateCompanyDto } from './dto/update-company.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { Company } from './entities/company.entity';
import { Repository } from 'typeorm';

@Injectable()
export class CompanyService {
  constructor(
    @InjectRepository(Company)
    private readonly companyRepository:
    Repository<Company>){
      
    }

    async create(createCompanyDto: CreateCompanyDto) {
      const company = this.companyRepository.create(createCompanyDto);
      try {
        return await this.companyRepository.save(company);
      } catch (error) {
        if (error.code === '23505')
          throw new HttpException('El nombre de la compañía ya existe. Por favor, introduzca un nombre diferente.', HttpStatus.BAD_REQUEST);
        throw error;
      }
    }

  async findAll() {
    return await this.companyRepository.find();
  }

  async findOne(id_company: number) {
    const company = await this.companyRepository.findOne({
      where: { id_company }});
    if (!company)
      throw new HttpException('La compañía no existe. Por favor, introduzca una compañía diferente.', HttpStatus.BAD_REQUEST);
    return company;
  }

  async update(id_company: number, updateCompanyDto: UpdateCompanyDto) {
    const company = await this.findOne(id_company);
    try{
      Object.assign(company, updateCompanyDto);
      return await this.companyRepository.save(company);
    } catch (error) {
      if (error.code === '23505')
        throw new HttpException('El nombre de la compañía ya existe. Por favor, introduzca un nombre diferente.', HttpStatus.BAD_REQUEST);
      throw error;
    }
  }

  async remove(id_company: number) {
    const company = await this.findOne(id_company);
    return await this.companyRepository.remove(company);
  }
}
