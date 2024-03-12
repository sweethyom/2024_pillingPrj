package co.first.pilling.customerservice.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import co.first.pilling.common.PageVO;
import co.first.pilling.customerservice.map.CustomerserviceMapper;
import co.first.pilling.customerservice.service.CustomerserviceService;
import co.first.pilling.customerservice.service.NoticeVO;

@Service
@Primary
public class CustomerserviceServiceImpl implements CustomerserviceService {
	@Autowired
	private CustomerserviceMapper map;
	
	@Override
	public List<NoticeVO> noticeSelectList(int offSet) {
		// TODO Auto-generated method stub
		return map.noticeSelectList(offSet);
	}

	@Override
	public List<NoticeVO> noticeSearchList(NoticeVO vo) {
		// TODO Auto-generated method stub
		return map.noticeSearchList(vo);
	}

	@Override
	public NoticeVO noticeDetail(NoticeVO vo) {
		// TODO Auto-generated method stub
		return map.noticeDetail(vo);
	}

	@Override
	public int noticeInsert(NoticeVO vo) {
		// TODO Auto-generated method stub
		return map.noticeInsert(vo);
	}

	@Override
	public int noticeUpdate(NoticeVO vo) {
		// TODO Auto-generated method stub
		return map.noticeUpdate(vo);
	}

	@Override
	public int noticeDelete(NoticeVO vo) {
		// TODO Auto-generated method stub
		return map.noticeDelete(vo);
	}

	@Override
	public PageVO selectCount() {
		// TODO Auto-generated method stub
		return map.selectCount();
	}

	@Override
	public int noticeUpdateHit(NoticeVO vo) {
		// TODO Auto-generated method stub
		return map.noticeUpdateHit(vo);
	}

}
