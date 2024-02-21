import { Test, TestingModule } from '@nestjs/testing';
import { LineTypeService } from './line_type.service';

describe('LineTypeService', () => {
  let service: LineTypeService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [LineTypeService],
    }).compile();

    service = module.get<LineTypeService>(LineTypeService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
