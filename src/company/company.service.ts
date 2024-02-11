import { Injectable, NotFoundException } from '@nestjs/common';
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

    return await this.companyRepository.save(company);
  }

  async findAll() {
    return await this.companyRepository.find();
  }

  async findOne(id_company: number) {
    return await this.companyRepository.findOne({
      where: { id_company }});
  }

  async update(id_company: number, updateCompanyDto: UpdateCompanyDto) {
    const company = await this.findOne(id_company);
    if(!company){
      throw new NotFoundException();
    }
    Object.assign(company, updateCompanyDto);
    return await this.companyRepository.save(company);
  }

  async remove(id_company: number) {
    const company = await this.findOne(id_company);
    if(!company){
      throw new NotFoundException();
    }
    return await this.companyRepository.remove(company);
  }
}
