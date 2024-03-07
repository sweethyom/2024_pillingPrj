package co.first.pilling.customerservice.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import co.first.pilling.common.PageVO;
import co.first.pilling.customerservice.map.QuestionMapper;
import co.first.pilling.customerservice.service.NoticeVO;
import co.first.pilling.customerservice.service.QuestionService;
import co.first.pilling.customerservice.service.QuestionVO;

@Service
@Primary
public class QuestionServiceImpl implements QuestionService {
	@Autowired
	private QuestionMapper map;
	
	@Override
	public List<QuestionVO> questionSelectList(int offSet) {
		// TODO Auto-generated method stub
		return map.questionSelectList(offSet);
	}

	@Override
	public List<QuestionVO> questionSearchList(QuestionVO vo) {
		// TODO Auto-generated method stub
		return map.questionSearchList(vo);
	}

	@Override
	public NoticeVO questionDetail(QuestionVO vo) {
		// TODO Auto-generated method stub
		return map.questionDetail(vo);
	}

	@Override
	public int questionInsert(QuestionVO vo) {
		// TODO Auto-generated method stub
		return map.questionInsert(vo);
	}

	@Override
	public int questionUpdate(QuestionVO vo) {
		// TODO Auto-generated method stub
		return map.questionUpdate(vo);
	}

	@Override
	public int questionDelete(QuestionVO vo) {
		// TODO Auto-generated method stub
		return map.questionDelete(vo);
	}

	@Override
	public PageVO questionSelectCount() {
		// TODO Auto-generated method stub
		return map.questionSelectCount();
	}

}
