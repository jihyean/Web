package test;

import java.util.ArrayList;

public class MemberDAO {
	ArrayList<MemberVO> datas;

	public MemberDAO() {
		datas = new ArrayList<MemberVO>();
		datas.add(new MemberVO("admin", "1234"));
		datas.add(new MemberVO("timo", "1234"));
		datas.add(new MemberVO("kim", "1234"));
	}

	public boolean insert(MemberVO vo) {
		boolean flag = false;
		for (MemberVO data : datas) {
			if (data.equals(vo)) { // PK인 아이디가 같다면 아이디 중복 ---> 가입불가
				flag = true;
				System.out.println(" 로그: MemberDAO: insert(): 아이디 중복");
				break;
			}
		}
		if (flag) { // 아이디 중복일 경우 flag=true 되어 가입 실패
			return false;
		}

		datas.add(new MemberVO(vo.getMid(), vo.getMpw()));

		return true;

	}

	public boolean update(MemberVO vo) {
		return false;
	}

	public boolean delete(MemberVO vo) {
		return false;
	}

	public ArrayList<MemberVO> selectAll(MemberVO vo) {
		return datas;
	}

	public MemberVO selectOne(MemberVO vo) {

		for (MemberVO v : datas) {
			if (vo.getMid().equals(v.getMid())) { // 아이디 일치
				if (vo.getMpw().equals(v.getMpw())) { // 비밀번호 일치
					return v; // 로그인 성공
				}
				System.out.println("로그: MemberDAO: selectOne(): 비밀번호가 일치하지 않습니다");
				return null;
			}
		}
		System.out.println("로그: MemberDAO: selectOne(): 해당 아이디가 없습니다");
		return null;
	}
}
