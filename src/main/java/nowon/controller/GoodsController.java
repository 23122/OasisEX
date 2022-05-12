package nowon.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nowon.dto.GoodsDto;
import nowon.dto.TimeDTO;

@WebServlet(urlPatterns = { "/goods/time", "/goods/glist" })
public class GoodsController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("요청되었어요");
		response.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
//		String[] strs=uri.split("/");
//		String key=strs[strs.length-1];
		String path = null;
		if (uri.contains("time")) {
			List<TimeDTO> result = new ArrayList<TimeDTO>();
			result.add(new TimeDTO("./images/time/time_01.jpg_300", 40, "05 : 12 : 30", 409, "매콤 순대 곱창볶음(300g)",
					"30,000"));
			result.add(
					new TimeDTO("./images/time/time_02.jpg_300", 32, "03 : 12 : 30", 21, "프리미엄견과 3종 선물세트", "31,500"));
			result.add(new TimeDTO("./images/time/time_03.jpg_300", 46, "02 : 12 : 30", 691, "대저 짭짭이토마토", "9,500"));
			result.add(new TimeDTO("./images/time/time_04.jpg_300", 32, "04 : 12 : 30", 355, "[햅쌀특가]햇사래 경기미(10kg)",
					"29,800"));
			result.add(new TimeDTO("./images/time/time_05.jpg_300", 30, "07 : 12 : 30", 1382, "무농약 쌀로 만든 떡국떡 2종(500g)",
					"3,000"));
			result.add(new TimeDTO("./images/time/time_06.jpg_300", 25, "08 : 12 : 30", 2210, "우리 한우 진한 곰탕(600g)",
					"2,500"));

			request.setAttribute("list", result);
			path = "/WEB-INF/goods/time-list.jsp";
		} else if (uri.contains("glist")) {
			List<GoodsDto> list = new ArrayList<GoodsDto>();
			list.add(new GoodsDto("./images/goods/goods_01.jpg_300", "[입점특가] GAP 저탄소 성주참외(5kg)", 0.2, "48,600원",
					"38,800원"));
			list.add(new GoodsDto("./images/goods/goods_02.jpg_300", "우리 한우 샤브샤브 불고기(300g/냉동)", 0.3, "15,500원",
					"10,800원"));
			list.add(new GoodsDto("./images/goods/goods_03.jpg_300", "참프레 고향집 토종닭 1,050g", 0.04, "12,400원", "11,800원"));
			list.add(new GoodsDto("./images/goods/goods_04.jpg_300", "[출시특가]수제 단팥빵(70gｘ5개)", 0.17, "9,900원", "8,200원"));
			request.setAttribute("list", list);
			path = "/WEB-INF/goods/list.jsp";
		}
		if (path != null) {
			request.getRequestDispatcher(path).forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
