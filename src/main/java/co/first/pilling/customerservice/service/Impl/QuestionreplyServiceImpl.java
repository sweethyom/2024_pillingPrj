package co.first.pilling.customerservice.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import co.first.pilling.customerservice.map.QuestionreplyMapper;
import co.first.pilling.customerservice.service.QuestionVO;
import co.first.pilling.customerservice.service.QuestionreplyService;
import co.first.pilling.customerservice.service.QuestionreplyVO;

@Service
@Primary
public class QuestionreplyServiceImpl implements QuestionreplyService {
	@Autowired
	private QuestionreplyMapper map;
	
	@Override
	public List<QuestionreplyVO> questionreplySelectList(QuestionVO vo) {
		// TODO Auto-generated method stub
		return map.questionreplySelectList(vo);
	}

	@Override
	public int questionreplyInsert(QuestionreplyVO vo) {
		// TODO Auto-generated method stub
		return map.questionreplyInsert(vo);
	}

	@Override
	public int questionreplyUpdate(QuestionreplyVO vo) {
		// TODO Auto-generated method stub
		return map.questionreplyUpdate(vo);
	}

	@Override
	public int questionreplyDelete(QuestionreplyVO vo) {
		// TODO Auto-generated method stub
		return map.questionreplyDelete(vo);
	}

}
