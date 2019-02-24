package zw.itman.rentcar.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import zw.itman.rentcar.dto.CarsCateBrandDto;
import zw.itman.rentcar.pojo.Cars;
import zw.itman.rentcar.service.CarsService;

@Controller
public class FrontCarsController {

	@Autowired
	private CarsService carsService;
	
	@RequestMapping("/findByBrandid")
	public String findCarsByBrandsid(@RequestParam("brandid") String brandid,HttpServletRequest request) {
		List<CarsCateBrandDto> findByBrandid = carsService.findByBrandid(brandid);
		request.getSession().setAttribute("findByBrandid", findByBrandid);
		return "front/carsByBrands";
		
	}
	@RequestMapping("/findByCateid")
	public String findCarsByCatesid(@RequestParam("cateid") String cateid,HttpServletRequest request) {
		List<CarsCateBrandDto> findByCateid = carsService.findByCateid(cateid);
		request.getSession().setAttribute("findByCateid", findByCateid);
		return "front/carsByCates";
		
	}
	@RequestMapping("//findOneCarById")
	public String findOneCarById(@RequestParam("carsid") String carsid,HttpServletRequest request) {
		CarsCateBrandDto findOneCarById=carsService.findOneCarById(carsid);
		System.err.println("============"+findOneCarById);
		request.getSession().setAttribute("oneCar", findOneCarById);
		return "front/singleCar";
		
	}
	
	
}
