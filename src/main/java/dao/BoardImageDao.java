package dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import ibatis.IbatisUtil;
import vo.BoardImage;

public class BoardImageDao {
	
	private SqlMapClient ibatis = IbatisUtil.getSqlMapClient();
	
	/**
	 * 
	 * @param boardImage
	 * @throws SQLException
	 */
	public void insertBoardImage(BoardImage boardImage) throws SQLException{
		ibatis.insert("board-image.insertBoardImage",boardImage);
	}
	
	
	/**
	 * 모든 이미지 게시글 정보를 조회해서 반환한다.
	 * @return 모든 이미지 게시글 정보 
	 * @throws SQLException
	 */
	@SuppressWarnings("unchecked")
	public List<BoardImage> getBoardImage() throws SQLException {
		return (List<BoardImage>)ibatis.queryForList("board-image.getBoardImage");
	}
	
	/**
	 * 지정된 이미지 게시글 번호에 해당하는 이미지 게시글 정보를 반환한다
	 * @param no 조회할 첨부 게시글 정보
	 * @return 첨부이미지게시글 정보
	 * @throws SQLException
	 */
	public BoardImage getBoardImageByNo(int no) throws SQLException {
		return (BoardImage)ibatis.queryForObject("board-image.getBoardImageByNo", no);
	}
	
	
	
}
