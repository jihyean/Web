package model;

import java.util.ArrayList;

public class MemberDAO {
	private ArrayList<MemberVO> datas;

	public MemberDAO() {
		datas = new ArrayList<MemberVO>();
		datas.add(new MemberVO("admin", "1234", "관리자"));
		datas.add(new MemberVO("1234", "1234", "1234"));
		datas.add(new MemberVO("timo", "1234", "티모"));
		datas.add(new MemberVO("qwer", "1234", "테스터"));
	}

	public boolean insert(MemberVO mVO) {
		return false;

	}

	public ArrayList<MemberVO> selectAll(MemberVO mVO) {
		return null;

	}

	public MemberVO selectOne(MemberVO mVO) {
		for (MemberVO v : datas) {
			if (mVO.getMid().equals(v.getMid())) { // 아이디 일치
				if (mVO.getMpw().equals(v.getMpw())) { // 비밀번호 일치
					return v; // 로그인 성공
				}
				System.out.println("로그: MemberDAO: selectOne(): 비밀번호가 일치하지 않습니다");
				return null;
			}
		}
		System.out.println("로그: MemberDAO: selectOne(): 해당 아이디가 없습니다");
		return null;
	}

	public boolean update(MemberVO mVO) {
		return false;
	}

	public boolean delete(MemberVO mVO) {
		return false;
	}

}
