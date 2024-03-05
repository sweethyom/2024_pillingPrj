package co.first.pilling.customerservice.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import co.first.pilling.common.PageVO;
import co.first.pilling.customerservice.map.QuestionMapper;
import co.first.pilling.customerservice.service.NoticeVO;
import co.first.pilling.customerservice.service.QuestionService;
import co.first.pilling.question.service.QuestionVO;

@Service
@Primary
public class QuestionServiceImpl implements QuestionService {
	@Autowired
	private QuestionMapper map;
	
	@Override
	public List<QuestionVO> questionSelectList(int offSet) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<QuestionVO> questionSearchList(NoticeVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public NoticeVO questionDetail(NoticeVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int questionInsert(NoticeVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int questionUpdate(NoticeVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int questionDelete(NoticeVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public PageVO questionSelectCount() {
		// TODO Auto-generated method stub
		return null;
	}

}
