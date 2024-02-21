import { Test, TestingModule } from '@nestjs/testing';
import { LineTypeController } from './line_type.controller';
import { LineTypeService } from './line_type.service';

describe('LineTypeController', () => {
  let controller: LineTypeController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [LineTypeController],
      providers: [LineTypeService],
    }).compile();

    controller = module.get<LineTypeController>(LineTypeController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
